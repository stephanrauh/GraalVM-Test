import fs from 'fs';

var polyglotContext = Java.type('org.graalvm.polyglot.Context');
var pythonContext = polyglotContext.create().getPolyglotBindings();

const pythonCode = fs.readFileSync('greet.py', 'utf8');

// Evaluate the Python code
Polyglot.eval('python', pythonCode);

// Invoke the Python function
const result = Polyglot.eval('python', 'greet("GraalVM")');
console.log(result); // outputs: Hello, GraalVM