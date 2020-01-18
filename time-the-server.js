const spawn = require("child_process").spawn;
const request = require("request");

const pingIntervalMs = 100;

const args = process.argv.slice(2);
if (args.length == 0) {
  console.log('The path of java executable jar must be specified !');
}

const proc = spawn("java", ["-jar", args[0]], {
  timeout: 60000
});

const startTime = new Date().getTime();
const intervalHandle = setInterval(() => {
  request("http://localhost:8080/hello", (error, response, body) => {
      if (!error && response && response.statusCode === 200 && body) {
          const time = new Date().getTime() - startTime;
          console.log(time + " ms");
          clearInterval(intervalHandle);
          proc.kill();
          process.exit(0);
      }
    }
  );
}, pingIntervalMs);