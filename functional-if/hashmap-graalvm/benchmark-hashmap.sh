export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.1.0/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
java -version
rm -r ./target/classes
mkdir ./target/classes
javac -d ./target/classes -s ./src/main/java ./src/main/java/*.java
rm results/5-jitwatch/*.log

echo "Hashmap with Optional.of().orElseGet():"

# emitting the bytecode:
javap -p -c -cp target/classes FunctionalHashMap > results/2-bytecode/FunctionalHashMap.bytecode

# Simply running the benchmark:
java -cp ./target/classes FunctionalHashMap > results/1-benchmark/functional.txt

# This produces the log JITWatch needs:
java -Xbatch -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+PrintAssembly -XX:+LogCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp ./target/classes FunctionalHashMap >/dev/null
mv hotspot_*.log results/5-jitwatch/hotspot-functional.log

# This shows that the compiler kicks in during the warm-up-phase:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintCompilation -cp ./target/classes FunctionalHashMap > results/3-watch-the-compiler/functional-hashmap-compilation.txt

# generate the Assembly code:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -cp ./target/classes FunctionalHashMap > results/4-assembler/functional-hashmap-raw.asm


echo "Hashmap with if-statement:"
# Simply running the benchmark:
java -cp ./target/classes ProceduralHashMap > results/1-benchmark/procedural.txt

# emitting the bytecode:
javap -p -c -cp target/classes ProceduralHashMap > results/2-bytecode/ProceduralHashMap.bytecode

# This produces the log JITWatch needs:
java -Xbatch -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+PrintAssembly -XX:+LogCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp ./target/classes ProceduralHashMap >/dev/null
mv hotspot_*.log results/5-jitwatch/hotspot-procedural.log
# This shows that the compiler kicks in even before the warm-up-phase:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintCompilation -cp ./target/classes ProceduralHashMap > results/3-watch-the-compiler/procedural-hashmap-compilation.txt


# generate the Assembly code:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -cp ./target/classes ProceduralHashMap > results/4-assembler/procedural-hashmap-raw.asm

# run the benchmark again, just to see if something's changed:
java -cp ./target/classes FunctionalHashMap > results/1-benchmark/functional-repeated.txt
java -cp ./target/classes ProceduralHashMap > results/1-benchmark/procedural-repeated.txt