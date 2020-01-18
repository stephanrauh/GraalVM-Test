export PATH=$PATH;/Library/Java/JavaVirtualMachines/adoptopenjdk-11-openj9.jdk/Contents/Home/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11-openj9.jdk/Contents/Home

java --version
javac Measure.java
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation Measure