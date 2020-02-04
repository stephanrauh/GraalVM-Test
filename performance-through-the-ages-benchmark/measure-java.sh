javac -sourcepath . de/beyondjava/microbenchmark/pre15/*.java
java --version
java de.beyondjava.microbenchmark.pre15.PerformanceTest5 -cp de/beyondjava/microbenchmark/pre15/*


echo
echo "GraalVM"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home
javac -sourcepath . de/beyondjava/microbenchmark/pre15/*.java
java --version
java de.beyondjava.microbenchmark.pre15.PerformanceTest5 -cp de/beyondjava/microbenchmark/pre15/*
