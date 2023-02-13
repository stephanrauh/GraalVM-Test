import cluster from "cluster";
import { cpus } from "os";

import { existsSync, readFileSync } from "fs";
import { createServer } from "http";
import process from "process";

let numCPUs = cpus;
numCPUs = 4; // the algorithm divides the canvas into four tiles
if (cluster.isPrimary) {
  console.log(`starting ${numCPUs} processes`);
  for (var i = 0; i < numCPUs; i++) {
    cluster.fork();
  }
} else {
  startServer();
}

function startServer() {
  let server = createServer(dispatcher);

  // wait for requests
  let port = 4200;
  server.listen(port);
  console.log(`listening on port ${port}...`);
}

function dispatcher(request, response) {
  // understand the request
  let path = request.url;
  if (path == "/") path = "/index.html";
  console.log("request for " + path);

  // if client requested data
  if (path.startsWith("/db.json")) {
    serveMandelbrotSet(request, response, path);
  } else if (path.startsWith("/version")) {
    serveVersionNumbers(response);
  } else {
    // you should use asynchronous file reads in nodejs for actual webservices in production
    serveIndexHtml(path, response);
  }
}

function serveIndexHtml(path, response) {
  let answer = "";
  if (existsSync(`client${path}`)) {
    let html = readFileSync(`client${path}`, "utf-8").toString();
    response.writeHead(200, { "Content-Type": "text/html" });
    answer = html;
  }

  // send answer to client
  // this covers mandelbrot points as well as index.html, style.css and script.js
  response.write(answer);
  response.end();
  return answer;
}

function serveVersionNumbers(response) {
  let answer = "";
  const version = process.version;
  const enginePath = process.argv0;
  const graalEngine = enginePath.split("/").find((x) => x.startsWith("graalvm"));
  if (graalEngine) {
    answer = graalEngine + " (Node.js " + version + ")";
  } else {
    answer = "Node.js " + version;
  }
  response.writeHead(200, { "Content-Type": "text/plain" });
  response.write(answer);
  response.end();
  return answer;
}

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
  console.log(path);
  // get parameters from the url
  const params = decodeGetParams(path);
  const zoom = parseFloat(params.zoom);
  const minx = parseFloat(params.x) - 1 / zoom;
  const maxx = parseFloat(params.x) + 1 / zoom;
  const mini = parseFloat(params.y) - 1 / zoom;
  const maxi = parseFloat(params.y) + 1 / zoom;

  console.log(`Coordinates: (${minx},${mini}) - (${maxx},${maxi})`);

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

function serveMandelbrotSet(request, response, path) {
  // initialize the connection
  console.log("client requesting stream");
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
            console.log("no more points found for stream id: " + id);
            // free up memory
            state = {};
            mb_answer = {};
            response.end();
          }
        }
      } else {
        clearInterval(interval);
        console.log("closed because writeQueueSize is too lage; stream id: " + id);
        // free up memory
        state = {};
        mb_answer = {};
        response.end();
      }
    } else {
      clearInterval(interval);
      console.log("closed because _handle is null; stream id: " + id);
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
      console.log("client closed stream id: " + id);
      // free up memory
      state = {};
      mb_answer = {};
      response.end();
    },
    false
  );
  return 0;
}

function initializeMB(state, mb_answer, size) {
  let width = Math.abs(mb_answer.maxx - mb_answer.minx);
  let height = Math.abs(mb_answer.maxi - mb_answer.mini);
  let stepi = height / size;
  let stepx = width / size;

  // check if this loop will ever come to an end. An issue that might be the case for very large zoom factors
  if (1 - stepx === 1) return -1;

  state.allPointsC = new Array(size * size);
  state.allPointsZ = new Array(size * size);
  state.allPointsPx = new Array(size * size);

  // each item inside answer.points will get a unique identifier
  let pointNr = 0;

  // iterate over each point in the visible coordinate system
  let ci = mb_answer.maxi;
  let cx = 0;
  while (ci >= mb_answer.mini) {
    cx = mb_answer.maxx;
    while (cx >= mb_answer.minx) {
      // it will leave out 2 circles that are known to remain black
      if ((cx + 0.35) * (cx + 0.35) + ci * ci > 0.14)
        if ((cx + 1) * (cx + 1) + ci * ci > 0.04) {
          // if((cx*cx)+(ci*ci) <= 4)
          // add every point (except those inside the two circles) to state.allPoints
          state.allPointsC[pointNr] = [
            cx, // will remain the same all the time
            ci, // except that point diverges. then undefined will be assigned to it
          ];
          state.allPointsZ[pointNr] = [
            cx, // this is not redundant. it's zx and zi actually
            ci, // this array tuple is going to be overwritten with iteration results
          ];
        }

      // the array index
      pointNr += 1;

      // go to next pixel
      cx -= stepx;
    }
    // go to next line
    ci -= stepi;
  }
  return 1;
}

function iterateEverythingOnce(state, mb_answer, size) {
  // index inside the array that is being sent to the client
  let divergedPointsCount = 0;

  // go through all points, they are initialized in initializeMB()
  for (let pointNr = 0; pointNr < state.allPointsC.length; pointNr++) {
    // only points that did not diverge
    const currentPointC = state.allPointsC[pointNr];
    if (currentPointC !== undefined) {
      divergedPointsCount = iterateOnePixelOnce(state, pointNr, currentPointC, divergedPointsCount, mb_answer, size);
    }
  }

  // take slice from state.allPointsC and store it inside mb_answer
  mb_answer.points = state.allPointsPx.slice(0, divergedPointsCount);
  mb_answer.length = divergedPointsCount;
}
function iterateOnePixelOnce(state, pointNr, currentPointC, divergedPointsCount, mb_answer, size) {
  const currentPointZ = state.allPointsZ[pointNr];
  // do a mandelbrot iteration
  let zx = currentPointZ[0];
  let zi = currentPointZ[1];
  const dist = zx * zx + zi * zi;

  // check if this point diverges or not
  if (dist < 4) {
    // does not converge / pythagoras squared (no sqrt)
    // then do an iteration. next time the server will check wether or not this diverges (dist larger than two)
    // allPointsC holds the points from the last requestMB call
    ({ zi, zx } = doIterateOnePixel(zi, zx, currentPointC, currentPointZ));
  } // converges
  else {
    // put this point into mb_answer.points
    // the sever will send only those points that just diverged in the most recent iteration
    divergedPointsCount = markPixelAsDiverging(state, divergedPointsCount, currentPointC, mb_answer, size, pointNr);
  }
  return divergedPointsCount;
}

function markPixelAsDiverging(state, divergedPointsCount, currentPointC, mb_answer, size, pointNr) {
  state.allPointsPx[divergedPointsCount] = [
    (((currentPointC[0] - mb_answer.minx) * size) / mb_answer.width).toFixed(0),
    (((currentPointC[1] - mb_answer.mini) * size) / mb_answer.height).toFixed(0),
  ];

  divergedPointsCount++;

  // mark this point as "diverged". The loop will leave out points that are known to diverge
  state.allPointsC[pointNr] = undefined;
  return divergedPointsCount;
}

function doIterateOnePixel(zi, zx, currentPointC, currentPointZ) {
  const zj = zi; // store old zi value in zj, because...
  zi = 2 * zx * zi + currentPointC[1]; // ...zi is going to be overwritten now...
  zx = zx * zx - zj * zj + currentPointC[0]; // ...but needs to be here for one more calculation

  // state.allPointsZ holds the information for the server needed to calculate the fractal
  currentPointZ[0] = zx;
  currentPointZ[1] = zi;
  return { zi, zx };
}
