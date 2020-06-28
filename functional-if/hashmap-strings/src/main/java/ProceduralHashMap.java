import java.util.HashMap;

public class ProceduralHashMap {

  private static HashMap<Integer, String> map = new HashMap<>();

  static {
    for (int i = 0; i < 1000; i++) {
      if (i%2 == 0) {
        map.put(i, new Integer(i).toString());
      }
    }
  }

  public static void main(String[] args) {
    var testee = new ProceduralHashMap();
    System.out.println();
    System.out.println("Running the benchmark with a cold JVM");
    testee.testAndMeasure();

    System.out.println("Warmup phase");
    for (int i = 0; i < 500000; i++) {
      testee.runTest();
    }

    System.out.println("Test phase");
    testee.testAndMeasure();
    System.out.println();
  }

  private void testAndMeasure() {
    long start = System.nanoTime();
    String result = runTest();
    long end = System.nanoTime();
    System.out.println("Time elapsed: " + ((end-start)/1000)/1000.0 + " ms result=" + result);
  }

  private String runTest() {
    String result = null;
    for (int i = 0; i < 1000; i++) {
      result = max100(i);
    }
    return result;
  }

  private String max100(int i) {
    var result = map.get(i);
    if (result == null) {
      result = new StringBuilder(new Integer(i ^ 314).toString()).reverse().toString();
      map.put(i, result);
    }
    return result;
  } 
}