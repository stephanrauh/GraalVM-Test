import java.util.ArrayList;
import java.util.List;

public class Procedural {

  public static List<Boolean> isPrime;

  public static long countPrimes(int LIMIT) {
    isPrime = new ArrayList<>(LIMIT);
    for (int i = 0; i < LIMIT; i++) {
      isPrime.add(i, isPrime(i));
    }

    long count = 0;
    for (boolean b : isPrime) {
      if (b) {
        count++;
      }
    }
    return count;
  }

  public static boolean isPrime(int number) {
    if (number <= 3) {
      return true;
    }
    for (int i = 2; i < number; i++) {
      if (i * i < number) {
        if (isPrime.get(i)) {
          if (number % i == 0) {
            return false;
          }
        }
      }
    }
    return true;
  }
}