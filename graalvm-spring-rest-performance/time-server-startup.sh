#!/bin/sh

export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home

./mvnw install -DskipTests

clear
echo "Spring Boot application successfully compiled. Starting time measurements."
echo "Times are the cold start time of Spring Boot plus the delay until it responds to a REST call."

for (( i=0; i<10; ++i)); do
    FIRST=TRUE JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    echo "-------------"
    FIRST=TRUE JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    echo "-------------"

    FIRST=TRUE JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home node time-the-server.js 
    echo "-------------"
    FIRST=TRUE JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
    JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home node time-the-server.js 
done
