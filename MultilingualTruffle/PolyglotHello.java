import org.graalvm.polyglot.*;
import org.graalvm.polyglot.proxy.*;

public class PolyglotHello {
    public static void main(String[] args) {
        System.out.println("This is Java speaking.");
        try (Context context = Context.create()) {
            Value result = context.eval("js", "console.log('... and this is JavaScript speaking!');");
        }
    }
}