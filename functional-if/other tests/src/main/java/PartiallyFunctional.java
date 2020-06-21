import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

public class PartiallyFunctional {

  public static List<Boolean> isPrime;

  public static long countPrimes(final int LIMIT) {
    isPrime = new ArrayList<>(LIMIT);
    IntStream.range(0, LIMIT).forEach(i -> isPrime.add(i, isPrime(i)));
    return isPrime.stream().filter(isPrime -> isPrime).count();
  }

  public static boolean isPrime(final int number) {
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