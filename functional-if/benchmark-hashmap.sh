export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
java -version
rm -r ./target/classes
mkdir ./target/classes
javac -d ./target/classes -s ./src/main/java ./src/main/java/*.java
rm *.log

echo "Hashmap with Optional.of().orElseGet():"
# java -cp ./target/classes FunctionalHashMap

java -Xbatch -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+PrintAssembly -XX:+LogCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp ./target/classes FunctionalHashMap > functional-hashmap-inlining.txt
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintCompilation -cp ./target/classes FunctionalHashMap > functional-hashmap-compilation.txt
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -cp ./target/classes FunctionalHashMap > functional-hashmap-raw.asm

mv hotspot_*.log hotspot-functional.log

echo "Hashmap with if-statement:"
# java -cp ./target/classes ProceduralHashMap
java -Xbatch -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+PrintAssembly -XX:+LogCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp ./target/classes ProceduralHashMap > procedural-hashmap-inlining.txt
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintCompilation -cp ./target/classes ProceduralHashMap > procedural-hashmap-compilation.txt
# java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -cp ./target/classes ProceduralHashMap > procedural-hashmap-raw.asm
mv hotspot_*.log hotspot-procedural.log
