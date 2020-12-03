SET JAVA_HOME=C:\noscan\graalvm-ce-java11-20.3.0
SET PATH=%JAVA_HOME%\bin;%PATH%

javac de/Measure.java
java -version
REM java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation CompileCommand=print,*Measure.myMethod  Measure

java de.Measure
java de.Measure > "GraalVM CE 20.3.0 Windows (build 11.0.9+10-jvmci-20.3-b06, mixed mode, sharing).txt"
