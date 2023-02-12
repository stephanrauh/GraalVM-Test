var colors = [
  [255, 0, 0],
  [255, 4, 0],
  [255, 7, 0],
  [255, 11, 0],
  [255, 15, 0],
  [255, 18, 0],
  [255, 22, 0],
  [255, 25, 0],
  [255, 29, 0],
  [255, 33, 0],
  [255, 36, 0],
  [255, 40, 0],
  [255, 44, 0],
  [255, 47, 0],
  [255, 51, 0],
  [255, 55, 0],
  [255, 58, 0],
  [255, 62, 0],
  [255, 65, 0],
  [255, 69, 18],
  [255, 73, 0],
  [255, 76, 0],
  [255, 81, 32],
  [255, 84, 0],
  [255, 87, 0],
  [255, 91, 0],
  [255, 95, 0],
  [255, 98, 0],
  [255, 102, 0],
  [255, 105, 0],
  [255, 109, 0],
  [255, 113, 0],
  [255, 116, 0],
  [255, 120, 0],
  [255, 124, 0],
  [255, 127, 0],
  [255, 131, 0],
  [255, 135, 0],
  [255, 138, 0],
  [255, 142, 0],
  [255, 145, 0],
  [255, 149, 18],
  [255, 153, 0],
  [255, 156, 0],
  [255, 160, 0],
  [255, 164, 0],
  [255, 167, 0],
  [255, 171, 0],
  [255, 175, 0],
  [255, 178, 0],
  [255, 182, 0],
  [255, 185, 0],
  [255, 189, 0],
  [255, 193, 0],
  [255, 196, 0],
  [255, 200, 0],
  [255, 204, 0],
  [255, 207, 0],
  [255, 211, 0],
  [255, 215, 0],
  [255, 218, 0],
  [255, 218, 0],
  [255, 222, 0],
  [255, 225, 0],
  [255, 229, 18],
  [255, 233, 0],
  [255, 236, 0],
  [255, 240, 0],
  [255, 244, 0],
  [255, 247, 0],
  [255, 251, 0],
  [255, 255, 0],
  [247, 255, 0],
  [239, 255, 0],
  [230, 255, 0],
  [221, 255, 0],
  [212, 255, 0],
  [204, 255, 0],
  [195, 255, 0],
  [186, 255, 0],
  [178, 255, 0],
  [169, 255, 0],
  [160, 255, 0],
  [151, 255, 0],
  [143, 255, 0],
  [134, 255, 0],
  [125, 255, 0],
  [116, 255, 0],
  [108, 255, 0],
  [99, 255, 0],
  [90, 255, 0],
  [82, 255, 0],
  [73, 255, 0],
  [64, 255, 0],
  [55, 255, 0],
  [47, 255, 0],
  [38, 255, 0],
  [29, 255, 0],
  [20, 255, 0],
  [12, 255, 0],
  [3, 255, 0],
  [0, 255, 6],
  [0, 255, 14],
  [0, 255, 23],
  [0, 255, 32],
  [0, 255, 41],
  [0, 255, 49],
  [0, 255, 58],
  [0, 255, 67],
  [0, 255, 76],
  [0, 255, 84],
  [0, 255, 93],
  [0, 255, 102],
  [0, 255, 110],
  [0, 255, 119],
  [0, 255, 128],
  [0, 255, 137],
  [0, 255, 145],
  [0, 255, 154],
  [0, 255, 163],
  [0, 255, 172],
  [0, 255, 180],
  [0, 255, 189],
  [0, 255, 198],
  [0, 255, 206],
  [0, 255, 215],
  [0, 255, 224],
  [0, 255, 233],
  [0, 255, 241],
  [0, 255, 250],
  [0, 253, 255],
  [0, 250, 255],
  [1, 248, 255],
  [1, 245, 255],
  [2, 242, 255],
  [2, 239, 255],
  [3, 236, 255],
  [3, 233, 255],
  [4, 230, 255],
  [4, 227, 255],
  [5, 224, 255],
  [5, 221, 255],
  [6, 218, 255],
  [6, 216, 255],
  [7, 213, 255],
  [7, 210, 255],
  [8, 207, 255],
  [8, 204, 255],
  [9, 201, 255],
  [9, 198, 255],
  [10, 196, 255],
  [11, 193, 255],
  [11, 190, 255],
  [12, 187, 255],
  [12, 184, 255],
  [13, 181, 255],
  [13, 178, 255],
  [14, 175, 255],
  [14, 172, 255],
  [15, 169, 255],
  [15, 166, 255],
  [16, 163, 255],
  [16, 161, 255],
  [17, 158, 255],
  [17, 155, 255],
  [18, 152, 255],
  [18, 149, 255],
  [19, 146, 255],
  [19, 143, 255],
  [20, 141, 255],
  [20, 138, 255],
  [21, 135, 255],
  [21, 132, 255],
  [22, 129, 255],
  [22, 126, 255],
  [23, 123, 255],
  [23, 120, 255],
  [24, 117, 255],
  [24, 114, 255],
  [25, 111, 255],
  [26, 109, 255],
  [29, 107, 255],
  [34, 105, 255],
  [38, 103, 255],
  [42, 101, 255],
  [46, 99, 255],
  [50, 97, 255],
  [54, 95, 255],
  [58, 93, 255],
  [62, 91, 255],
  [67, 89, 255],
  [70, 87, 255],
  [75, 85, 255],
  [78, 83, 255],
  [83, 81, 255],
  [87, 79, 255],
  [91, 77, 255],
  [96, 75, 255],
  [99, 73, 255],
  [104, 71, 255],
  [107, 70, 255],
  [112, 67, 255],
  [115, 66, 255],
  [120, 64, 255],
  [124, 61, 255],
  [128, 60, 255],
  [132, 58, 255],
  [136, 56, 255],
  [140, 54, 255],
  [144, 52, 255],
  [149, 50, 255],
  [153, 48, 255],
  [157, 46, 255],
  [161, 44, 255],
  [165, 42, 255],
  [169, 40, 255],
  [173, 38, 255],
  [177, 36, 255],
  [182, 34, 255],
  [185, 32, 255],
  [190, 30, 255],
  [193, 29, 255],
  [198, 26, 255],
  [202, 25, 255],
  [206, 23, 255],
  [210, 20, 255],
  [214, 19, 255],
  [219, 17, 255],
  [222, 15, 255],
  [227, 13, 255],
  [230, 11, 255],
  [235, 9, 255],
  [239, 7, 255],
  [243, 5, 255],
  [247, 3, 255],
  [251, 1, 255],
  [255, 0, 253],
  [255, 0, 240],
  [255, 0, 227],
  [255, 0, 215],
  [255, 0, 202],
  [255, 0, 189],
  [255, 0, 177],
  [255, 0, 164],
  [255, 0, 152],
  [255, 0, 139],
  [255, 0, 126],
  [255, 0, 114],
  [255, 0, 101],
  [255, 0, 88],
  [255, 0, 76],
  [255, 0, 63],
  [255, 0, 51],
  [255, 0, 38],
  [255, 0, 25],
  [255, 0, 13],
];
var serverHistory = [];
var clientHistory = [];
var epilepsyWarnungAccepted = false;

//url is something like www.example.de
//params is an json object
function encodeGetParams(url, params) {
  var keys = Object.keys(params);
  //check for empty params object
  if (keys.length >= 1) {
    url += "?";
    var i;
    //iterate over
    for (i = 0; i < keys.length; i++) {
      url += keys[i] + "=" + params[keys[i]];
      //check if there are more parmaeters and prepare
      if (i != keys.length - 1) url += "&";
    }
  }
  return url.replace(/\"/g, "");
}

function lookupcolor(i, id) {
  //var ifac = 4*(-(i-81.14479)*0.003+0.74692) //this reduces the speed in which the color hue changes over time

  transparency = Math.max(Math.min(-0.006 * (i - 85) + 1, 1), 0); //this sets how to color fades out
  i = (colors.length - ((i * 4 + 160) % colors.length) - 1).toFixed(0); //this defines the starting color and the overal changing speed
  //put the color together and return it
  var clr = `RGBa(${colors[i][0]},${colors[i][1]},${colors[i][2]},${transparency})`;
  return clr;
  //something alternative:
  //return "hsl("+(-i*3+200)+",100%,50%)"
}

var canvas, context, pixelwidth, pixelheight, csssize, zoom; //some dimensions and render stuff
var source, requestcount, startedreceivingpoints, activestreams; //stream related variables
var pointstodraw, pointstack; //points to render
var time, latency, starttime, totalPoints; //statistics and time benchmarks
var totalClientTime;

//initialize canvas
csssize = 768;
canvas = document.getElementById("plot");
canvas.style.width = csssize + "px";
canvas.style.height = csssize + "px";
context = canvas.getContext("2d");

function reset() {
  console.log("reset");

  //close streams
  for (key in source) if (source[key] != null) source[key].close();

  source = {};
  requestcount = {};
  startedreceivingpoints = false;
  size = csssize;
  time = 0;
  pixelwidth = 0;
  latency = 0;
  starttime = new Date().getTime();
  pointstack = new Array();
  activestreams = 0;
  totalPoints = 0;

  source = {};
  requestcount = {};
  startedreceivingpoints = false;
  totalClientTime = 0;
}

function start(callback = () => console.log("Done")) {
  console.log("\n");
  reset();

  //canvas
  var param4 = document.getElementById("param4").value;
  if (param4 == "") param4 = 0;
  param4 = (parseInt(param4) / 2).toFixed(0) * 2;

  size = Math.max(20, Math.min(Math.abs(param4), csssize)); //resolution (res)
  if (canvas.width != size) {
    canvas.width = size;
    canvas.height = size;
  }

  context.fillStyle = "black";
  context.fillRect(0, 0, canvas.width, canvas.height);
  renderCrosshair();

  //get params from form
  var x = parseFloat(document.getElementById("param1").value);
  var y = parseFloat(document.getElementById("param2").value);
  var zoom = parseFloat(document.getElementById("param3").value);
  if (x == "") x = 0;
  if (y == "") y = 0;
  if (zoom == "" || param3 == "0") zoom = 1;

  //anzahl punkte horizontal (& vertikal) = size
  //breite des bildschirms in mathematischen koordinaten:
  //bei zoom 0.5: 4
  //bei zoom 1: 2
  //bei zoom 2: 1
  //d.h.: 2/zoom
  pixelwidth = 2 / zoom / size;
  //size = size/2 //rendert pixel nur alle deltax = 2 und deltay = 2

  //daten in teile aufteilen
  setTimeout(function () {
    activestreams++;
    var id = 1;
    var url = encodeGetParams("/db.json", { x, y, zoom, size: size / 2, id });
    //start requesting
    request(url, 0, 0, id, callback);
  }, 1);
  setTimeout(function () {
    activestreams++;
    var id = 2;
    var url = encodeGetParams("/db.json", {
      x: x + pixelwidth,
      y,
      zoom,
      size: size / 2,
      id,
    });
    //start requesting
    request(url, 1, 0, id, callback);
  }, 1);
  setTimeout(function () {
    activestreams++;
    var id = 3;
    var url = encodeGetParams("/db.json", {
      x,
      y: y + pixelwidth,
      zoom,
      size: size / 2,
      id,
    });
    //start requesting
    request(url, 0, 1, id, callback);
  }, 1);
  setTimeout(function () {
    activestreams++;
    var id = 4;
    var url = encodeGetParams("/db.json", {
      x: x + pixelwidth,
      y: y + pixelwidth,
      zoom,
      size: size / 2,
      id,
    });
    //start requesting
    request(url, 1, 1, id, callback);
  }, 1);

  //don't redirect onclick on submit
  return false;
}

function request(url, movex, movey, id, callback) {
  source[id] = new EventSource(url);
  if (typeof EventSource !== "undefined") {
    console.log("opening stream id: " + id);
    //log current time for the first time
    time = new Date().getTime(); //updated after every datachunk
    let firstmessageprocessed = false;

    //on new message from stream
    source[id].addEventListener(
      "message",
      function (e) {
        if (e.data != "") {
          if (e.data == "zoomfactorinvalid") {
            console.log(
              "message from server: The zoom factor is too large (stream id: " +
                id +
                "); closing stream"
            );
            source[id].close();
            activestreams--;
            return;
          }

          //parse data that the client received from the server
          var result = JSON.parse(e.data);

          if (result.requestcount > 250) {
            source[id].close();
            activestreams--;
            console.log(
              "closed stream id: " +
                id +
                " because enough answers were received"
            );
            //don't return, rather render this last message
          }

          result["movex"] = movex;
          result["movey"] = movey;

          context.fillStyle = lookupcolor(result.requestcount, id);

          //will check wether or not it is time to render
          render(result, id);

          //display time that was needed for receiving and rendering
          logPerformance();
          time = currenttime;

          //check if there is too few points that are being transfered because the image starts to converge
          if (result.length <= 2 && firstmessageprocessed) {
            source[id].close();
            activestreams--;
            console.log(
              "closed stream id: " + id + " because the image converged"
            );
          }
          firstmessageprocessed = true;
        }
        if (activestreams === 0) {
          setTimeout(callback, 0);
          logPerformanceHistory();
        }
      },
      false
    );
    source[id].onerror = function (event) {
      source[id].close();
      activestreams--;
      console.log(
        "stream id: " +
          id +
          " is not active anymore. The server might have closed it or it is unreachable"
      );
    };

    source[id].onclose = function (event) {
      source[id].close();
      activestreams--;
      console.log("server closed stream id: " + id);
    };
  } else {
    console.log("no stream support");
  }

  return false;
}

function logPerformance() {
  currenttime = new Date().getTime().toFixed(0);
  document.getElementById("totaltime").innerHTML = `total: ${
    currenttime - starttime
  }ms`;
}

function logPerformanceHistory() {
  currenttime = new Date().getTime().toFixed(0);
  document.getElementById("totaltime").innerHTML = `total: ${
    currenttime - starttime
  }ms`;
  serverHistory.push(currenttime - starttime - totalClientTime);
  clientHistory.push(`${totalClientTime} ms`);
  const clientHistoryHtml = clientHistory.join("<br>");
  document.getElementById("clientHistory").innerHTML = clientHistoryHtml;
  const serverHistoryHtml = serverHistory.map((x) => `${x} ms`).join("<br>");
  document.getElementById("serverHistory").innerHTML = serverHistoryHtml;
  const iter = serverHistory.map((x, index) => `#${index}`).join("<br>");
  document.getElementById("iteration").innerHTML = iter;
  drawHistogram();
}

function render(result, id) {
  var rendertime = new Date().getTime();
  totalPoints = 0;
  //draw
  var pointNr;
  var x;
  var y;
  for (pointNr = 0; pointNr < result.length; pointNr++) {
    //calculate the position in px (from 0 to 512) from the mathematical position,x
    //which consists of values like -1.2754 or 0.42809
    x = result.points[pointNr][0] * 2; //because the client splits mandelbrot into 4 pieces
    y = result.points[pointNr][1] * 2; //multiply each one by 2 (2*2=4)
    x = x + result.movex - 2;
    y = y + result.movey - 2;
    context.fillRect(x, y, 1, 1);
  }
  renderCrosshair();
  currenttime = new Date().getTime();
  totalClientTime += currenttime - rendertime;
}

//show centered crosshair
function renderCrosshair() {
  context.fillStyle = "white";

  linelength = Math.round(size / 40);

  if (size < 60) return;

  if (size < 100) {
    context.fillRect(
      Math.round(canvas.width / 2) - 1,
      Math.round(canvas.height / 2) - 1,
      1,
      1
    );
  } else {
    //border
    /*context.fillStyle = "black"
        context.fillRect(Math.round(canvas.width/2-linelength-1-1),    Math.round(canvas.height/2)-1-1,                   linelength+2, 1+2) //left
        context.fillRect(Math.round(canvas.width/2-1),                 Math.round(canvas.height/2-linelength-1)-1-1,      1+2, linelength+2) //top
        context.fillRect(Math.round(canvas.width/2+2-1),               Math.round(canvas.height/2)-1-1,                   linelength+2, 1+2) //right
        context.fillRect(Math.round(canvas.width/2-1),                 Math.round(canvas.height/2+2)-1-1,                 1+2, linelength+2) //bottom*/

    //cross
    context.fillRect(
      Math.round(canvas.width / 2 - linelength - 1),
      Math.round(canvas.height / 2) - 1,
      linelength,
      1
    ); //left
    context.fillRect(
      Math.round(canvas.width / 2),
      Math.round(canvas.height / 2 - linelength - 1) - 1,
      1,
      linelength
    ); //top
    context.fillRect(
      Math.round(canvas.width / 2 + 2),
      Math.round(canvas.height / 2) - 1,
      linelength,
      1
    ); //right
    context.fillRect(
      Math.round(canvas.width / 2),
      Math.round(canvas.height / 2 + 2) - 1,
      1,
      linelength
    ); //bottom
  }
}

function preset(x, y, zoom, maxIterations) {
  document.getElementById("param1").value = x;
  document.getElementById("param2").value = y;
  document.getElementById("param3").value = zoom;
  document.getElementById("param4").value = maxIterations;
}

function loop(remainingLoops = 25) {
  if (!epilepsyWarnungAccepted) {
    if (
      !confirm(
        "Warning! This demo flickers because it redraws the canvas frequently. Please confirm you're not suffering from epilepsy. Otherwise, please click cancel because the demo may be cause epileptic fits."
      )
    ) {
      return;
    }
    epilepsyWarnungAccepted = true;
  }
  if (remainingLoops > 0) {
    reset();
    start(() => loop(remainingLoops - 1));
  }
}

function drawHistogram() {
  if (serverHistory.length < 2) {
    return;
  }
  var c = document.getElementById("histogram");
  var ctx = c.getContext("2d");
  var width = c.width;
  let height = c.height;
  ctx.clearRect(0, 0, width, height);
  ctx.strokeStyle = "black";

  const slowest = Math.max(...serverHistory);
  const fastest = Math.min(...serverHistory);

  ctx.font = "18px Arial";
  ctx.fillText(`${slowest} ms`, 10, 14);
  ctx.fillText(`0 ms`, 10, height - 3);
  const fastestY = height - (fastest * height) / slowest;
  ctx.fillText(`${fastest} ms`, 10, fastestY);
  ctx.beginPath();
  ctx.setLineDash([1, 1]);
  ctx.moveTo(0, fastestY);
  ctx.lineTo(width - 1, fastestY);

  ctx.setLineDash([]);
  ctx.moveTo(0, 0);
  ctx.lineTo(0, height - 1);
  ctx.stroke();

  ctx.lineTo(width - 1, height - 1);
  ctx.stroke();

  for (let i = 0; i < slowest; i += 100) {
    ctx.strokeStyle = "black";
    const tickY = height - (i * height) / slowest;
    ctx.moveTo(0, tickY);
    ctx.lineTo(5, tickY);
    ctx.stroke();
  }

  const columnWidth = width / serverHistory.length;

  for (let x = 0; x < serverHistory.length - 1; x++) {
    ctx.beginPath();
    ctx.setLineDash([]);
    ctx.strokeStyle = "blue";
    ctx.moveTo(x * columnWidth, height - (serverHistory[x] * height) / slowest);
    ctx.lineTo(
      (x + 1) * columnWidth,
      height - (serverHistory[x + 1] * height) / slowest
    );
    ctx.stroke();
    ctx.strokeStyle = "black";
    ctx.moveTo(x * columnWidth, height - 1);
    ctx.lineTo(x * columnWidth, height - 5);
    ctx.stroke();
  }
}

async function retrieveServerInfo() {
  const result = await fetch("/version");
  const header = document.getElementById("header");
  header.innerText =
    "Express.js Mandelbrot demo running on " + (await result.text());
}

//initial request
// start();

retrieveServerInfo();
