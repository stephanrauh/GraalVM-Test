#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ee-java11-21.0.0.2/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
java -version

mvn clean install

echo "GraalVM EE 21.0.0.2, Java 11.0.10:"

java -jar ./target/rhino-nashorn-graalvm-speedtest-1.0-SNAPSHOT-jar-with-dependencies.jar > results-GraalVM-EE-21.0.0.2-code-caching.txt

export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.0.0.2/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
java -version

echo "GraalVM CE 21.0.0.2, Java 11.0.10:"

java -jar ./target/rhino-nashorn-graalvm-speedtest-1.0-SNAPSHOT-jar-with-dependencies.jar > results-GraalVM-CE-21.0.0.2-code-caching.txt
