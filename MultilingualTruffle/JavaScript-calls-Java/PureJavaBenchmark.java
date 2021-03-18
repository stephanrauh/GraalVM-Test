import java.util.*;

public class PureJavaBenchmark {
    public static void main(String... args) {
        var fastest = 1000.0;

        List<Integer> result = new ArrayList<>();

        for (int i = 0; i <= 200; i++) {
            var start = System.nanoTime();
            result = new Sieve().eratosthenes(5_000_000);
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
}