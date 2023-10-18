import { initializeMB, iterateEverythingOnce } from "./mandelbrot.mjs";

function decodeGetParams(url) {
  url = url.split("?")[1]; // get the params without the address

  let params = {};
  if (url) {
    let strparams = url.split("&"); // transform url to an array with all the params

    // iterate over the array with the parameters (each element looks like "asdf=bla")
    for (let i = 0; i < strparams.length; i++) {
      let strparam = strparams[i].split("=");
      params[strparam[0]] = strparam[1];
    }
  }
  return params;
}

function parseurl(path) {
//  console.log(path);
  // get parameters from the url
  const params = decodeGetParams(path);
  const zoom = parseFloat(params.zoom);
  const minx = parseFloat(params.x) - 1 / zoom;
  const maxx = parseFloat(params.x) + 1 / zoom;
  const mini = parseFloat(params.y) - 1 / zoom;
  const maxi = parseFloat(params.y) + 1 / zoom;

//  console.log(`Coordinates: (${minx},${mini}) - (${maxx},${maxi})`);

  const size = parseInt(params.size); // known as "size" client side
  const width = Math.abs(maxx - minx);
  const height = Math.abs(maxi - mini);
  const id = parseInt(params.id);

  let mb_answer = {
    maxx: maxx,
    maxi: maxi,
    minx: minx,
    mini: mini,
    width: width,
    height: height,
    zoom: zoom,
    length: 0,
    requestcount: 0,
    points: [], // points that changed (diverged) go here
  };

  return { mb_answer, size, id };
}

export function serveMandelbrotSet(request, response, path) {
  // initialize the connection
  // console.log("client requesting stream");
  response.writeHead(200, {
    "Content-Type": "text/event-stream",
    "Cache-Control": "no-cache",
    Connection: "keep-alive",
  });
  response.write("\n\n");

  // get some parameters, initialize stuff
  let calculateTime = new Date().getTime();
  let parsed = parseurl(path);
  let mb_answer = parsed.mb_answer;
  let id = parsed.id;
  let state = {};
  state.allPointsC = [];
  state.allPointsZ = [];
  state.allPointsPx = [];

  // initialize all the points that are going to be iterated. returns the amount of points
  let zoomfactorvalid = initializeMB(state, mb_answer, parsed.size);
  if (zoomfactorvalid == -1) {
    console.log("the zoom factor is too large");
    response.write("id:" + id + "\n");
    response.write("data: zoomfactorinvalid\n\n");
    response.end();
    return;
  }

  // as long as the client is active, iterate the points, that initializeMB created
  // this interval writes the stream. It's an interval and not a while loop because it has to be asynchronous and non blocking to some degree
  let interval = null;
  let requestcount = 0;
  interval = setInterval(function () {
    if (request.socket._handle != null) {
      if (request.socket._handle.writeQueueSize <= 5) {
        iterateEverythingOnce(state, mb_answer, parsed.size);
        if (mb_answer.points.length > 0) {
          mb_answer["requestcount"] = requestcount;
          calculateTime = new Date().getTime();
          const answer = JSON.stringify(mb_answer);
          response.write("id:" + id + "\n");
          response.write("data:" + answer + "\n\n");
          mb_answer.points = [];
          requestcount++;
        } else {
          // if no point has been found within 5 seconds, close the stream
          if (new Date().getTime() - calculateTime > 5000) {
            clearInterval(interval);
//            console.log("no more points found for stream id: " + id);
            // free up memory
            state = {};
            mb_answer = {};
            response.end();
          }
        }
      } else {
        clearInterval(interval);
//        console.log("closed because writeQueueSize is too lage; stream id: " + id);
        // free up memory
        state = {};
        mb_answer = {};
        response.end();
      }
    } else {
      clearInterval(interval);
//      console.log("closed because _handle is null; stream id: " + id);
      // free up memory
      state = {};
      mb_answer = {};
      response.end();
    }
  }, 1);

  request.connection.addListener(
    "close",
    function () {
      clearInterval(interval);
//      console.log("client closed stream id: " + id);
      // free up memory
      state = {};
      mb_answer = {};
      response.end();
    },
    false
  );
  return 0;
}
