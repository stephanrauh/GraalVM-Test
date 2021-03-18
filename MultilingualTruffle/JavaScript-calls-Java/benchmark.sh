unset JAVA_HOME
/usr/libexec/java_home -v 11
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.0.0.2/Contents/Home/bin:$PATH
java --version
javac *.java

echo "-----"
echo "Reference Benchmark: pure Java"
java PureJavaBenchmark -cp *.class

echo "-----"
echo "JavaScript calls a Java object that has been registered with the context"
java CallJavaObjectFromJavaScript -cp *.class

echo "-----"
echo "JavaScript looks up a Java object by name"
java LookUpJavaObject -cp *.class

