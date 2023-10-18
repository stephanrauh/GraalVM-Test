"use strict";

import { existsSync, readFileSync } from "fs";
import { createServer } from "http";
import process from "process";
import { serveMandelbrotSet } from "./mandelbrot-server.mjs";

export function startServer() {
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
  // console.log("request for " + path);

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
