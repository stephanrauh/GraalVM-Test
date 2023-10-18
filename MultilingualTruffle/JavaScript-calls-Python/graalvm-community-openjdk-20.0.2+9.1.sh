export PATH=/Library/Java/JavaVirtualMachines/graalvm-community-openjdk-20.0.2+9.1/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-community-openjdk-20.0.2+9.1/Contents/Home
node --version
# gu install nodejs
# gu install python
# gu rebuild-images libpolyglot -cp ${JAVA_HOME}/lib/graalvm/lib-javavm.jar  # takes 11 minutes!

node --polyglot JavaScript-calls-Python-eval.mjs