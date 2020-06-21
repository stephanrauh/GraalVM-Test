cd ../..

cd temp

git clone https://github.com/AdoptOpenJDK/openjdk-jdk8u.git

cd hotspot/src/share/tools/hsdis/

cp ../../../../../../../GraalVM-Test/functional-if/binutils-2.29.1.tar.gz .

tar -xzf binutils-2.29.1.tar.gz

make BINUTILS=binutils-2.29.1 ARCH=amd64

sudo cp build/macosx-amd64/hsdis-amd64.dylib /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/lib/server/