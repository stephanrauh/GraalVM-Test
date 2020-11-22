# don't forget to notarize GraalVM on MacOS:
# sudo xattr -r -d com.apple.quarantine /Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.4/

unset JAVA_HOME
/usr/libexec/java_home -v 11.0.9.1
export JAVA_VERSION=11.0.9.1

javac de/Measure.java
java --version
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation CompileCommand=print,*Measure.myMethod  Measure

java de.Measure
# java de.Measure > "GraalVM CE 19.3.4 (build 11.0.9+10-jvmci-19.3-b18, mixed mode, sharing).txt"