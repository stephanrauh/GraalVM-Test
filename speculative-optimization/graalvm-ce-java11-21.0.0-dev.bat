SET JAVA_HOME=C:\noscan\graalvm-ce-java11-21.0.0-dev
SET PATH=%JAVA_HOME%\bin;%PATH%

javac de/Measure.java
java -version
REM java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:-LogCompilation CompileCommand=print,*Measure.myMethod  Measure

java de.Measure
java de.Measure > "GraalVM CE 21.0.0-dev Windows (build 11.0.9+10-jvmci-21.0-b02, mixed mode, sharing).txt"
