unset JAVA_HOME
/usr/libexec/java_home -v 11
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.0.0.2/Contents/Home/bin:$PATH
java --version
javac PolyglotErastosthenes.java
java PolyglotErastosthenes -cp PolyglotErastosthenes.class
