# export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.0.2/Contents/Home
javac PolyglotHello.java
java --version
java PolyglotHello -cp PolyglotHello.class
