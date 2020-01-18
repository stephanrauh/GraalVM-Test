#!/bin/sh

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home

export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home

java -jar ./target/graalvm-spring-rest-performance-0.0.1-SNAPSHOT.jar