import java.util.HashMap;
import java.util.Optional;

public class ProceduralHashMap {

  private static HashMap<Integer, Integer> map = new HashMap<>();

  static {
    for (int i = 0; i < 10000; i++) {
      if (i%2 == 0) {
        map.put(i, i);
      }
    }
  }

  public static void main(String[] args) {
    var testee = new ProceduralHashMap();
    System.out.println();
    System.out.println("Running the benchmark with a cold JVM");
    testee.testAndMeasure();

    System.out.println("Warmup phase");
    for (int i = 0; i < 5000; i++) {
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
    System.out.println("Time elapsed: " + ((end-start)/1000)/1000.0 + " ms result=" + result);
  }

  private int runTest() {
    int result = 0;
    for (int i = 0; i < 1000; i++) {
      result = max100(i);
    }
    return result;
  }

  private int max100(int i) {
    Integer result = map.get(i);
    if (result == null) {
      return 100;
    }
    return result;
  } 
}