export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.3.1/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.3.1/Contents/Home
gu install espresso
gu install native-image
gu rebuild-images libpolyglot -cp ${JAVA_HOME}/lib/graalvm/lib-javavm.jar # takes 11 minutes!
# java --version
# gu --help
# gu --show-ee-token

# gu install nodejs
node --version
node CallJavaFromJavaScriptUsingEspresso.js