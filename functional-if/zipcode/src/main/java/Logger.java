public class Logger {
  public static int errors = 0;

  public String error(String text, String params) {
    String message = text.replace("{}", params == null ? "null": params);
    // silently swallow the message
    // but increase the counter to prevent the JVM to optimize the method away
    errors++;
    return message;
  }
}