import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;


public class ProceduralZipCode {
  
  private static List<String> zipCodes = new ArrayList<>(10000);
  
  private Logger log = new Logger();

  static {
    for (int i = 0; i < 10000; i++) {
      if (i%2 == 0) {
        zipCodes.add((String.valueOf(i) + "00000").substring(0, 5));
      } else if (i%5 == 0) {
        zipCodes.add(null);
      } else if (i%3 == 0) {
        zipCodes.add(String.valueOf(4 * i));
      } else {
        zipCodes.add("Hello");
      }
    }
  }


  public static void main(String[] args) {
    var testee = new ProceduralZipCode();
    System.out.println();
    System.out.println("Running the benchmark with a cold JVM");
    testee.testAndMeasure();

    System.out.println("Warmup phase");
    for (int i = 0; i < 10000; i++) {
      testee.runTest();
    }

    System.out.println("Test phase");
    testee.testAndMeasure();
    System.out.println();
  }

  private void testAndMeasure() {
    long start = System.nanoTime();
    int result = runTest();
    long end = System.nanoTime();
    System.out.println("Time elapsed: " + ((end-start)/1000)/1000.0 + " ms valid codes = " + result);
  }

  private int runTest() {
    int valid = 0;
    for (String s: zipCodes) {
      if (isPostalCodeValid(s)) {
        valid++;
      }
    }
    return valid;
  }

  private boolean isPostalCodeValid(String zipCode) {
    boolean valid = zipCode != null;
    valid = valid && !zipCode.isEmpty();
    valid = valid && zipCode.length() == 5;
    valid = valid &&  zipCode.matches("[0-9]+");
    if (!valid) {
      log.error("invalid zip code: {}", zipCode);
    }
    return valid;
  }
}