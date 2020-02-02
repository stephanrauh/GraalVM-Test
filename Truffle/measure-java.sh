javac Prime.java
java --version
java Prime -cp Prime.class


echo
echo "GraalVM"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home
javac Prime.java
java --version
java Prime -cp Prime.class
