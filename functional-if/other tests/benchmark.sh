echo "GraalVM 20.0.0, Java 11.0.6:"
java -version

javac --release 11 -d ./target/classes --source-path ./src/main/java ./src/main/java/*.java

ls -l ./target/classes

echo "Simple Measurement:"
java -cp ./target/classes Measure

echo "Measurement using Lambdas:"
java -cp ./target/classes MeasureWithLambda

echo "AdoptOpenJDK 11.0.5:"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
java -version

javac --release 11 -d ./target/classes --source-path ./src/main/java ./src/main/java/*.java

ls -l ./target/classes

echo "Simple Measurement:"
java -cp ./target/classes Measure

echo "Measurement using Lambdas:"
java -cp ./target/classes MeasureWithLambda
