package de;

import java.util.Arrays;

public class Measure {
    static long[][] timers = new long[4][];

    public static void main(String[] args) {
        for (int i = 1; i < 4; i++) {
            timers[i]=new long[5];
        }
        var persons = new Person[1000];
        for (int i = 0; i < 1000; i++) {
            persons[i] = new Person(i);
        }
        measure(new AgeCalculator(persons),timers[1]);
        measure2(new AgeCalculator(persons),timers[2]);
        System.out.print("Iteration");
        System.out.print("\t");
        System.out.print("AgeCalculator 1");
        System.out.print("\t");
        System.out.print("AgeCalculator 2");
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

    private static double measure(AgeCalculator cnt, long[] timer) {
        final int SAMPLESIZE = 5;
        final int LOOPSIZE = 100_000;
        double result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  cnt.averageAge() ;
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
    }

        private static double measure2(AgeCalculator cnt, long[] timer) {
        final int SAMPLESIZE = 5;
        final int LOOPSIZE = 100_000;
        double result = 0;
        for (int i = 0; i < SAMPLESIZE; i++) {
            long start = System. nanoTime ();
            for (int j = 0; j < LOOPSIZE; j++) {
                result +=  cnt.averageAge2() ;
            }

            long stop = System. nanoTime ();
            timer[i]=(stop-start)/ 1_000_000;
        }
        return result;
    }

}

class AgeCalculator {
    private Person[] persons;
    public AgeCalculator(Person[] persons) {
        this.persons = persons;
    }

    // shortened version of the source code at https://medium.com/graalvm/stream-api-performance-with-graalvm-be6cfe7fbb52
    public double averageAge() {
    return Arrays.stream(persons)
        .filter(p -> p.age >= 18 && p.age <= 21)
        .mapToInt(p -> p.age)
        .average()
        .getAsDouble();
    }

    public double averageAge2() {
        double result = 0.0;
        for (Person p: persons) {
            result += p.age;
        }
        return result / persons.length;
    }



}


class Person {
  public final int age;

  public Person(int age) {
      this.age = age;
  }
}
