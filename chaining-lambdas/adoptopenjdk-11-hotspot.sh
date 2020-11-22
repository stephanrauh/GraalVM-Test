unset JAVA_HOME
/usr/libexec/java_home -v 11.0.9.1
export JAVA_VERSION=11.0.9.1

javac de/Measure.java
javac de/ChainingLambdaBenchmark.java
java --version
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation Measure
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:-LogCompilation -XX:CompileCommand=print,Measure.incrementManyTimes Measure
## java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly de.Measure
java de.Measure
# java de.ChainingLambdaBenchmark
