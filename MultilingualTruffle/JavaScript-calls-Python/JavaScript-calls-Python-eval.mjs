import fs from 'fs';

const pythonCode = fs.readFileSync('greet.py', 'utf8');

// Evaluate the Python code
Polyglot.eval('python', pythonCode);

// Invoke the Python function
const result = Polyglot.eval('python', 'greet("GraalVM")');
console.log(result); // outputs: Hello, GraalVM