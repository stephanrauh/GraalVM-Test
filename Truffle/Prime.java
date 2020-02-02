import java.util.ArrayList;

public class Prime {

  private ArrayList<Integer> sieve(int max) {
    var sieve = new boolean[max + 1];
    for (var i = 0; i <= max; i++) {
      sieve[i] = true;
    }
    for (var i = 2; i < Math.sqrt(max); i++) {
      if (sieve[i]) {
        for (int j = (int) Math.pow(i, 2); j < max; j += i) {
          sieve[j] = false;
        }
      }
    }
    var result = new ArrayList<Integer>();
    for (var i = 2; i < sieve.length; i++) {
      if (sieve[i]) {
        result.add(i);
      }
    }
    return result;
  }

  public static void main(String... args) {
    System.out.println("Java version: " + System.getProperty("java.version"));

    for (var i = 1; i <= 200; i++) {
      var start = System.nanoTime();
      var result = new Prime().sieve(5 * 1000 * 1000);
      var end = System.nanoTime();
      if (i <= 5 || i == 10 || i % 50 == 0) {
        System.out.println(i + ". calculation took " + (int) ((end - start) / 1000) / 1000 + " milliseconds");
      }
    }
  }
}
