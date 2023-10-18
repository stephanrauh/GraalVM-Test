const pythonCode = `
def greet(name):
    return "Hello, " + name
`;

// Evaluate the Python code
Polyglot.eval('python', pythonCode);

// Invoke the Python function
const result = Polyglot.eval('python', 'greet("GraalVM")');
console.log(result); // outputs: Hello, GraalVM