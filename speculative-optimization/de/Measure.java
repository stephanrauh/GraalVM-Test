package de;

public class Measure {
    static long[][] timers = new long[11][];

    public static void main(String[] args) {
        new Measure().testSuite();
        printResult();
    }

    public void testSuite() {
        for (int i = 1; i < timers.length; i++) {
            timers[i]=new long[1001];
        }

        measure(new Counter1(),timers[1]);
        measure(new Counter2(),timers[2]);
        measure(new Counter3(),timers[3]);
        measure(new Counter4(),timers[4]);        
        measure(new Counter5(),timers[5]);
        measure(new Counter6(),timers[6]);
        measure(new Counter7(),timers[7]);
        measure(new Counter8(),timers[8]);
        measure(new Counter9(),timers[9]);
        measure(new Counter10(),timers[10]);

    }

    private long measure(Counter cnt, long[] timer) {
        // runCounters(new Counter3()); // activate this line to confuse the optimizer
        final int SAMPLESIZE = timer.length;
        long result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System.nanoTime();
            result += runCounters(cnt);
            long stop = System.nanoTime();
            timer[i]=(stop-start);
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
        System.out.print("\t");
        System.out.print("Counter 4");
        System.out.print("\t");
        System.out.print("Counter 5");
        System.out.print("\t");
        System.out.print("Counter 6");
        System.out.print("\t");
        System.out.print("Counter 7");
        System.out.print("\t");
        System.out.print("Counter 8");
        System.out.print("\t");
        System.out.print("Counter 9");
        System.out.print("\t");
        System.out.print("Counter 10");
        System.out.println("\t");
        for (int y = 0; y < timers[1].length; y++) {
            if (y < 5 || y % 10 == 0) {
                System.out.print(1+y);
                System.out.print("\t\t\t");
                for (int x = 1; x < 11 && x < timers.length; x++) {
                    System.out.print(timers[x][y] / 1_000_000 + " ms");
                    System.out.print("\t\t");
                }
                System.out.println();
            }
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

class Counter4 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}

class Counter5 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}

class Counter6 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}

class Counter7 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}

class Counter8 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}

class Counter9 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}

class Counter10 implements Counter {
    private int x;

    public int inc() {
        return x++;
    }
}