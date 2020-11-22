# don't forget to notarize GraalVM on MacOS:
# sudo xattr -r -d com.apple.quarantine /Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.3.0/

unset JAVA_HOME
/usr/libexec/java_home -v 11.0.9
export JAVA_VERSION=11.0.9


javac de/Measure.java
javac de/ChainingLambdaBenchmark.java
java --version
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation CompileCommand=print,*Measure.myMethod  Measure

java de.Measure
# java de.ChainingLambdaBenchmark
# java de.Measure > "GraalVM CE 20.3.0 (build 11.0.9+10-jvmci-20.3-b06, mixed mode, sharing).txt"
