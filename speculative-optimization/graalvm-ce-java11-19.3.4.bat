SET JAVA_HOME=C:\java-versions\graalvm-ce-java11-19.3.4
SET PATH=%JAVA_HOME%\bin;%PATH%

javac de/Measure.java
java -version
REM java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation CompileCommand=print,*Measure.myMethod  Measure

java de.Measure
java de.Measure > "GraalVM CE 19.3.4 Windows (build 11.0.9+10-jvmci-19.3-b18).txt"
