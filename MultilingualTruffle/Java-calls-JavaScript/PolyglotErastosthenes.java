import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.graalvm.polyglot.*;
import org.graalvm.polyglot.proxy.*;

public class PolyglotErastosthenes {
    public static void main(String[] args) throws IOException {
        var primejs = new String(Files.readAllBytes(Paths.get("prime.js")));
        try (Context context = Context.create()) {
            Value jsBindings = context.getBindings("js");
            Value jsProgram = context.eval("js", primejs);
            Value eratosthenes = jsBindings.getMember("sieve");

            Value result = null;
            
            var fastest = Long.MAX_VALUE;
            for (int i = 1; i <= 200; i++) {
                var begin = System.nanoTime();
                result = eratosthenes.execute(5_000_000);
                var end = System.nanoTime();
                var duration = (end-begin)/1000000;
                if (duration < fastest) {
                    fastest = duration;
                }
                if (i <= 5 || i == 10 || i % 50 == 0) {
                    System.out.println(i + ". calculation took " + duration + " ms");
                }
            }

            System.out.println("The fastest calculation took " + fastest + " ms");
            System.out.println("There are " + result.getArraySize() + " prime numbers below " + 5_000_000);
            for (var i = 0; i < result.getArraySize() && i<10; i++) {
                System.out.print(result.getArrayElement(i) + ", ");
            }
            System.out.println(" ...");
        }
    }
}