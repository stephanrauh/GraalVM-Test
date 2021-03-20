if [[ "$OSTYPE" == "linux"* ]]; then
    unset JAVA_HOME

    /usr/libexec/java_home -v 11
    export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.0.0.2/Contents/Home/bin:$PATH
    java --version

    js --version

    gu install espresso
    # gu install native-image
    # gu rebuild-images libpolyglot -cp /Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.0.0.2/Contents/Home/lib/graalvm/lib-espresso.jar

    # js --polyglot ./CallJavaFromJavaScriptUsingEspresso.js
else 
    echo "GraalVM 21 supports Espresso on Hotspot only on Linux. "
fi