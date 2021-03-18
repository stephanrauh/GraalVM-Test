// originally published on https://www.craigrodrigues.com/blog/the-sieve-of-eratosthenes-in-javascript

import java.util.*;

public class Sieve {
    public ArrayList<Integer> eratosthenes(int max) {
        // Make array of length max and fill with true
        var sieve = new boolean[max];
        for (int i = 2; i < sieve.length; i++) {
            sieve[i] = true;
        }

        var root = Math.sqrt(max)+1;
        for (int i = 2; i < root; i++) {
            // If the number is labelled a prime then we can start at i^2 and mark every multiple of i
            // from there as NOT a prime
            if (sieve[i]) {
                for (int j = i * i; j < max; j += i) {
                    sieve[j] = false;
                }
            }
        }
        var result = new ArrayList<Integer>();
        for (int i = 0; i < sieve.length; i++) {
            if (sieve[i]) {
                result.add(i);
            }
        }
        return result;
    }
}
