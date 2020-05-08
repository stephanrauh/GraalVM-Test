import java.util.function.Supplier;

public class MeasureWithLambda {
    public static int LIMIT = 50000;
    public static int REPETITIONS = 28;
    private static String[] ALGORITHMS = {"procedural", "partially functional", "fully functional", "compact functional"};
    public static void main(String... args) {
        double[][] times = new double[ALGORITHMS.length][];
        for (int i = 0; i < ALGORITHMS.length; i++) {
            times[i] = new double[REPETITIONS];
        }
        for (int i = 0; i < REPETITIONS; i++) {
            times[2][i]= measure(() -> FullyFunctional.countPrimes(LIMIT));
        }
        for (int i = 0; i < REPETITIONS; i++) {
            times[3][i]= measure(() -> FullyFunctionalInlined.countPrimes(LIMIT));
        }
        
        for (int i = 0; i < REPETITIONS; i++) {
            times[0][i]= measure(() -> Procedural.countPrimes(LIMIT));
        }
        for (int i = 0; i < REPETITIONS; i++) {
            times[1][i]= measure(() -> PartiallyFunctional.countPrimes(LIMIT));
        }

        for (int row = 0; row < ALGORITHMS.length; row++) {
            System.out.print(leftPad(ALGORITHMS[row], 20));
            for (int column = 0; column < REPETITIONS; column++) {
                System.out.print("," + leftPad(times[row][column], 6));
            }
            System.out.println();
        }
    }
    
    public static double measure(Supplier<Long> algorithm)
    {
        long start = System.nanoTime();
        long count = algorithm.get();
        long end = System.nanoTime();
        if (count != 5183) { // stop the compiler from eliminating the function
            System.out.println("Wrong number of primes: " + count);
        }
        return ((end-start)/100000)/10.0;
    }

    public static String leftPad(double d, int length) {
        return leftPad(String.valueOf(d), length);
    }

    public static String leftPad(String s, int length) {
        while (s.length() < length) {
            s = " " + s;
        }
        return s;
    }
}