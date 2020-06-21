cd ../..

cd temp

git clone https://github.com/AdoptOpenJDK/openjdk-jdk11u.git

cd openjdk-jdk11u/src/utils/hsdis/

cp ../../../../../GraalVM-Test/functional-if/binutils-2.28.tar.gz .

tar -xzf binutils-2.28.tar.gz

make BINUTILS=binutils-2.28 ARCH=amd64

sudo cp build/macosx-amd64/hsdis-amd64.dylib /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/