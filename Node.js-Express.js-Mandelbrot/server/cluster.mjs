import cluster from "cluster";
import { cpus } from "os";
import { startServer } from "./server.mjs";

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
