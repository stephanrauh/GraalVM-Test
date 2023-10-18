export PATH=/Library/Java/JavaVirtualMachines/graalvm-ee-java19-22.3.1/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ee-java19-22.3.1/Contents/Home
# gu install nodejs
# java --version
node --version
node server/cluster.mjs graalvm="EE" 