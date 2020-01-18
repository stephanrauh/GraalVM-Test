export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home

javac de/Measure.java
java --version
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation CompileCommand=print,*Measure.myMethod  Measure

java de.Measure