import { sieve } from "./prime.mjs";

let fastest = 10000000000;

let result;

for (let i = 0; i < 200; i++) {
    let begin = new Date().getTime();
    result = sieve(5_000_000);
    const end = new Date().getTime();
    var duration = (end-begin);
    if (duration < fastest) {
        fastest = duration;
    }
    if (i <= 5 || i == 10 || i % 50 == 0) {
        console.log(i + ". calculation took " + duration + " ms");
    }   
}

console.log("The fastest calculation took " + fastest + " ms");
console.log("There are " + result.length + " prime numbers below " + 5_000_000);

