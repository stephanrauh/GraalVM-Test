unset JAVA_HOME
/usr/libexec/java_home -v 11
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.0.0/Contents/Home/bin:$PATH
js benchmark-node.mjs