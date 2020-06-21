import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.EnumSet;
import java.util.Optional;

public class FunctionalIf {
  public static void main(String[] args) {
    procedural();
    functional();
  }

  private static void functional() {
    Optional.of(LocalDate.now().getDayOfWeek())
        .filter(currentDay -> EnumSet.of(DayOfWeek.SATURDAY, DayOfWeek.SUNDAY)
                                     .contains(currentDay))
        .ifPresentOrElse(
            (currentDay) -> System.out.println("Enjoy life! It's " + currentDay),
            () -> System.out.println("Endure your work day!"));
  }

  private static void procedural() {
    var currentDay = LocalDate.now().getDayOfWeek();
    if ((currentDay == DayOfWeek.SATURDAY) 
     || (currentDay == DayOfWeek.SUNDAY)) {
      System.out.println("Enjoy life! It's " + currentDay);
    } else {
      System.out.println("Endure your work day!");
    }
  }

  private static boolean simpleProcedural(int number) {
    if (number > 3) {
      return true;
    } else {
      return false;
    }
  }

  private static boolean simpleFunctional(int number) {
    return Optional.of(number)
                   .filter(n -> n > 3)
                   .map(n -> true)
                   .orElseGet(() -> false);
  }
}