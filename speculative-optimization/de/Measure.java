package de;

public class Measure {
    static long[][] timers = new long[5][];

    public static void main(String[] args) {
        for (int i = 1; i < timers.length; i++) {
            timers[i]=new long[timers.length];
        }

        new Measure().testSuite();
        printResult();
    }

    public void testSuite() {
        for (int i = 1; i < timers.length; i++) {
            timers[i]=new long[timers.length];
        }

        measure(new Counter1(),timers[1]);
        measure(new Counter2(),timers[2]);
        measure(new Counter3(),timers[3]);
    }

    private long measure(Counter cnt, long[] timer) {
        final int SAMPLESIZE = timer.length;
        long result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System.nanoTime();
            result += runCounters(cnt);
            long stop = System.nanoTime();
            timer[i]=(stop-start) / 1_000_000;
        }
        return result;
    }

    private long runCounters(Counter cnt) {
       final int LOOPSIZE = 100_000_000;
       long result = 0;
       for (int j = 0; j < LOOPSIZE; j++) {
            result += cnt.inc();
        }
        return result;
    }

    public static void printResult() {
        System.out.print("Iteration");
        System.out.print("\t");
        System.out.print("Counter 1");
        System.out.print("\t");
        System.out.print("Counter 2");
        System.out.print("\t");
        System.out.print("Counter 3");
        System.out.println("\t");
        for (int y = 0; y < timers[1].length; y++) {
            System.out.print(1+y);
            System.out.print("\t\t");
            for (int x = 1; x < 4 && x < timers.length; x++) {
                System.out.print(timers[x][y] + " ms");
                System.out.print("\t\t");
            }
            System.out.println();
        }
    }
}

interface Counter {
    int inc();
}

class Counter1 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}

class Counter2 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}

class Counter3 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}