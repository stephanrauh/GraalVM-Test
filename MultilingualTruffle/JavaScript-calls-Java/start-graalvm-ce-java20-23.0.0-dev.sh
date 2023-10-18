export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java20-23.0.0-dev/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java20-23.0.0-dev/Contents/Home
node --version
# gu install espresso
# gu install nodejs
# gu rebuild-images libpolyglot -cp ${JAVA_HOME}/lib/graalvm/lib-javavm.jar
node --version
# java --version
# gu --help

node --polyglot CallJavaFromJavaScriptUsingEspresso.js