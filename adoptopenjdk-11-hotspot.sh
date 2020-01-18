export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home

javac de/Measure.java
java --version
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation Measure
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:-LogCompilation -XX:CompileCommand=print,Measure.incrementManyTimes Measure
## java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly de.Measure
java de.Measure