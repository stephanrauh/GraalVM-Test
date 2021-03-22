import org.graalvm.polyglot.*;
import org.graalvm.polyglot.proxy.*;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

public class RegisterJavaObject {
    public static void main(String[] args) {
        var fastest = 1000.0;

        List<Integer> result = new ArrayList<>();

        for (int i = 0; i <= 200; i++) {
            var start = System.nanoTime();
            result = callErastosthenesFromJavaScript();
            var end = System.nanoTime();
            var duration = ((end - start) / 1000L) / 1000.0;
            if (duration < fastest) {
                fastest = duration;
            }
            if (i <= 5 || i == 10 || i % 50 == 0) {
                System.out.println(i + ". calculation took " + duration + " ms");
            }   
        }

        System.out.println("The fastest calculation took " + fastest + " ms");
        System.out.println("There are " + result.size() + " prime numbers below " + 5_000_000);
    }

    public static List<Integer> callErastosthenesFromJavaScript() {
        var primejs = new String(Files.readAllBytes(Paths.get("call-java.js")));
        try (Context context = Context.newBuilder("js")
                                   .allowAllAccess(true)
                               .build()) {
            context.getBindings("js").putMember("sieve", new Sieve());
            Value listOfPrimeNumbers = context.eval("js", primejs);
            return listOfPrimeNumbers.as(List.class);
        }
    }
}
