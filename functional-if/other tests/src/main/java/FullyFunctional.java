import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.IntStream;

public class FullyFunctional {
  public static List<Boolean> isPrime;

  public static long countPrimes(final int LIMIT) {
    isPrime = new ArrayList<>(LIMIT);
    IntStream.range(0, LIMIT)
         .forEach(i -> isPrime.add(i, isPrime(i)));
    return isPrime.stream()
            .filter(isPrime -> isPrime)
            .count();
  }

  public static boolean isPrime(final int number) {
    return Optional.of(number)
        .filter(n -> n > 3)
        .map(n -> isPrimeAbove3(n))
        .orElse(true);
  }

  public static boolean isPrimeAbove3(final int number) {
    return IntStream.range(2, number)
         .filter(i -> i*i < number)
         .filter(i -> isPrime.get(i))
         .noneMatch(i -> number % i == 0);
  }
}