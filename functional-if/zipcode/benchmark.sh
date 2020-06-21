export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
java -version
rm -r ./target/classes
mkdir ./target/classes
javac -d ./target/classes -s ./src/main/java ./src/main/java/*.java
rm results/5-jitwatch/*.log

echo "ZipCode with Optional.of().orElseGet():"

# emitting the bytecode:
javap -p -c -cp target/classes FunctionalZipCode > results/2-bytecode/FunctionalZipCode.bytecode

# Simply running the benchmark:
java -cp ./target/classes FunctionalZipCode > results/1-benchmark/functional.txt

# This produces the log JITWatch needs:
java -Xbatch -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+PrintAssembly -XX:+LogCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp ./target/classes FunctionalZipCode >/dev/null
mv hotspot_*.log results/5-jitwatch/hotspot-functional.log

# This shows that the compiler kicks in during the warm-up-phase:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintCompilation -cp ./target/classes FunctionalZipCode > results/3-watch-the-compiler/functional-ZipCode-compilation.txt

# generate the Assembly code:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -cp ./target/classes FunctionalZipCode > results/4-assembler/functional-ZipCode-raw.asm


echo "ZipCode with if-statement:"
# Simply running the benchmark:
java -cp ./target/classes ProceduralZipCode > results/1-benchmark/procedural.txt

# emitting the bytecode:
javap -p -c -cp target/classes ProceduralZipCode > results/2-bytecode/ProceduralZipCode.bytecode

# This produces the log JITWatch needs:
java -Xbatch -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+PrintAssembly -XX:+LogCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp ./target/classes ProceduralZipCode >/dev/null
mv hotspot_*.log results/5-jitwatch/hotspot-procedural.log

# This shows that the compiler kicks in even before the warm-up-phase:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintCompilation -cp ./target/classes ProceduralZipCode > results/3-watch-the-compiler/procedural-ZipCode-compilation.txt

# generate the Assembly code:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -cp ./target/classes ProceduralZipCode > results/4-assembler/procedural-ZipCode-raw.asm

echo "ZipCode with optimized if-statement:"
# Simply running the benchmark:
java -cp ./target/classes OptimizedProceduralZipCode > results/1-benchmark/optimized-procedural.txt

# emitting the bytecode:
javap -p -c -cp target/classes OptimizedProceduralZipCode > results/2-bytecode/OptimizedProceduralZipCode.bytecode

# This produces the log JITWatch needs:
java -Xbatch -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+PrintAssembly -XX:+LogCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp ./target/classes OptimizedProceduralZipCode >/dev/null
mv hotspot_*.log results/5-jitwatch/hotspot-procedural.log

# This shows that the compiler kicks in even before the warm-up-phase:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintCompilation -cp ./target/classes OptimizedProceduralZipCode > results/3-watch-the-compiler/procedural-ZipCode-compilation.txt

# generate the Assembly code:
java -Xbatch -XX:-TieredCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -cp ./target/classes OptimizedProceduralZipCode > results/4-assembler/procedural-ZipCode-raw.asm
