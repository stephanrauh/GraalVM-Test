const spawn = require("child_process").spawn;
const request = require("request");
const fs = require("fs");

const pingIntervalMs = 10;

const graal = process.env.JAVA_HOME.includes("graalvm");

if (process.env.FIRST) {
  const proc2 = spawn("java", ["-version"], {
    timeout: 60000,
    env: {
      "JAVA_HOME": process.env.JAVA_HOME
    }
  });

  proc2.stderr.on('data', (data) => {
    console.log(`Test running on: ${data}`);
  });
}

const jar = "./target/quarkus-rest-1.0.0-SNAPSHOT-runner.jar";

const proc = spawn("java", ["-jar", jar], {
  timeout: 60000,
  env: {
    "JAVA_HOME": process.env.JAVA_HOME
  }
});

const startTime = new Date().getTime();
const intervalHandle = setInterval(() => {
  request("http://localhost:8080/greeting", (error, response, body) => {
      if (!error && response && response.statusCode === 200 && body) {
          const time = new Date().getTime() - startTime;
          console.log(time + " ms");
          clearInterval(intervalHandle);
          if (graal) {
            fs.appendFileSync("./graal-times.csv", time + "\n");
          } else {
            fs.appendFileSync("./hotspot-times.csv", time + "\n");
          }
          proc.kill();
          process.exit(0);
      }
    }
  );
}, pingIntervalMs);