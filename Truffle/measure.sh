echo "Standard node.js"
node -v
node ./prime.js

echo
echo "GraalVM JavaScript"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.1.0/Contents/Home/bin:$PATH
node -v
node ./prime.js
