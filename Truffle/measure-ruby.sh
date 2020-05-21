echo
echo "GraalVM Ruby"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.1.0/Contents/Home/bin:$PATH

gu install ruby 
ruby --version
ruby Prime.rb
