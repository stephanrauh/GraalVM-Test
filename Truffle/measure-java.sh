javac Prime.java
java --version
java Prime -cp Prime.class


echo
echo "GraalVM"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.1.0/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.1.0/Contents/Home
javac Prime.java
java --version
java Prime -cp Prime.class
