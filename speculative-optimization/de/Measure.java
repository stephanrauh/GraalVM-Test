package de;

public class Measure {
    static long[][] timers = new long[4][];

    public static void main(String[] args) {
        for (int i = 1; i < 4; i++) {
            timers[i]=new long[5];
        }
        measure(new Counter1(),timers[1]);
        measure(new Counter2(),timers[2]);
        measure(new Counter3(),timers[3]);
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

    private static long measure(Counter cnt, long[] timer) {
        final int SAMPLESIZE = 5;
        final int LOOPSIZE = 100_000_000;
        int result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  cnt.inc() ;
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
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