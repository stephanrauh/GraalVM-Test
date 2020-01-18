export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home

java -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI --version
javac Measure.java
java -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -Xbatch -XX:-TieredCompilation -XX:+PrintCompilation Measure