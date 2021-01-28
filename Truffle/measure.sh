echo "Standard node.js"
node -v
node ./prime.js

echo
echo "GraalVM JavaScript"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.3.0/Contents/Home/bin:$PATH
node -v
node --jvm ./prime.js

echo
echo "GraalVM 21.0.0 JavaScript"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.0.0/Contents/Home/bin:$PATH
node -v
node --jvm ./prime.js

echo
echo "GraalVM 21.0.0 Enterprise Edition JavaScript"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ee-java11-21.0.0/Contents/Home/bin:$PATH
node -v
node --jvm ./prime.js
