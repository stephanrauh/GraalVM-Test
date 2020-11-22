unset JAVA_HOME
/usr/libexec/java_home -v 15.0.1
export JAVA_VERSION=15.0.1

java --version
javac de/Measure.java
javac de/ChainingLambdaBenchmark.java
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation Measure
java de.Measure
# java de.ChainingLambdaBenchmark