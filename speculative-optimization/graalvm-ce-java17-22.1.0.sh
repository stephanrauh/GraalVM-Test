export JAVA_HOME="/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.1.0/Contents/Home"
export PATH=$PATH:%JAVA_HOME%\bin

javac de/Measure.java
java -version
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation CompileCommand=print,*Measure.myMethod  Measure

java de.Measure > "GraalVM CE 22.1.0 MacOS M1.txt"
cat "GraalVM CE 22.1.0 MacOS M1.txt"