package de;

public class ChainingLambdaBenchmark {
 
    public static Integer value = 77;

    final int SAMPLESIZE = 6;
    final int LOOPSIZE = 100_000_000;

 
    static long[][] timers = new long[7][];

    public static void main(String[] args) {
        for (int i = 1; i < 7; i++) {
            timers[i]=new long[6];
        }
        new ChainingLambdaBenchmark().measure(timers[1]);
        new ChainingLambdaBenchmark().measure2(timers[2]);
        new ChainingLambdaBenchmark().measure3(timers[3]);
        new ChainingLambdaBenchmark().measure4(timers[4]);
        new ChainingLambdaBenchmark().measure5(timers[5]);
        new ChainingLambdaBenchmark().measure6(timers[6]);
        System.out.print("Iteration");
        System.out.print("\t");
        System.out.print("Baseline");
        System.out.print("\t");
        System.out.print("Depth 1");
        System.out.print("\t\t");
        System.out.print("Depth 2");
        System.out.print("\t\t");
        System.out.print("Depth 3");
        System.out.print("\t\t");
        System.out.print("Depth 5");
        System.out.print("\t\t");
        System.out.print("Depth 10");
        System.out.println("\t");
        for (int y = 0; y < timers[1].length; y++) {
            System.out.print(1+y);
            System.out.print("\t\t");
            for (int x = 1; x < 7 && x < timers.length; x++) {
                System.out.print(timers[x][y] + " ms");
                System.out.print("\t\t");
            }
            System.out.println();
        }
    }

    private double measure(long[] timer) {
        double result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  baseline();
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
    }
   private double measure2(long[] timer) {
        double result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  depth1();
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
    }
    private double measure3(long[] timer) {
        double result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  depth2();
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
    }
    private double measure4(long[] timer) {
        double result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  depth3();
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
    }
    private double measure5(long[] timer) {
        double result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  depth5() ;
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
    }
    private double measure6(long[] timer) {
        double result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  depth10() ;
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
    }

 
    public int baseline() {
        return value;
    }
 
    public int depth1() {
        Level9 l9;
        Level10 l10;
 
        l10 = () -> value;
        l9 =  () -> l10;
 
        return l9.next().get();
    }
 
    public int depth2() {
        Level8 l8;
        Level9 l9;
        Level10 l10;
 
        l10 = () -> value;
        l9 =  () -> l10;
        l8 =  () -> l9;
 
        return l8.next().next().get();
    }
 
    public int depth3() {
        Level7 l7;
        Level8 l8;
        Level9 l9;
        Level10 l10;
 
        l10 = () -> value;
        l9 =  () -> l10;
        l8 =  () -> l9;
        l7 =  () -> l8;
 
        return l7.next().next().next().get();
    }
 
    public int depth5() {
        Level5 l5;
        Level6 l6;
        Level7 l7;
        Level8 l8;
        Level9 l9;
        Level10 l10;
 
        l10 = () -> value;
        l9  = () -> l10;
        l8  = () -> l9;
        l7  = () -> l8;
        l6  = () -> l7;
        l5  = () -> l6;
 
        return l5.next().next().next().next().next().get();
    }
 
    public int depth10() {
        Level0 l0;
        Level1 l1;
        Level2 l2;
        Level3 l3;
        Level4 l4;
        Level5 l5;
        Level6 l6;
        Level7 l7;
        Level8 l8;
        Level9 l9;
        Level10 l10;
 
        l10 = () -> value;
        l9 =  () -> l10;
        l8 =  () -> l9;
        l7 =  () -> l8;
        l6 =  () -> l7;
        l5 =  () -> l6;
        l4 =  () -> l5;
        l3 =  () -> l4;
        l2 =  () -> l3;
        l1 =  () -> l2;
        l0 =  () -> l1;
 
        return l0.next().next().next().next().next().next().next().next().next().next().get();
    }
}

@FunctionalInterface
interface Level0 {
    Level1 next();
}
@FunctionalInterface
interface Level1 {
    Level2 next();
}
@FunctionalInterface
interface Level2 {
    Level3 next();
}
@FunctionalInterface
interface Level3 {
    Level4 next();
}
@FunctionalInterface
interface Level4 {
    Level5 next();
}
@FunctionalInterface
interface Level5 {
    Level6 next();
}
@FunctionalInterface
interface Level6 {
    Level7 next();
}
@FunctionalInterface
interface Level7 {
    Level8 next();
}
@FunctionalInterface
interface Level8 {
    Level9 next();
}
@FunctionalInterface
interface Level9 {
    Level10 next();
}
@FunctionalInterface
interface Level10 {
    Integer get();
}