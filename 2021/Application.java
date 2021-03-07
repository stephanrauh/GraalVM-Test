import java.io.File;
import java.io.IOException;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Source;

public class Application {
    public static void main(String[] args) throws IOException {
        System.out.println("The ultimate question? Phew. Maybe JavaScript knows.");
        File file = new File(".", "deep-thought.mjs");

        try (Context context = Context.newBuilder("js").allowIO(true).build()) {
            Source source = Source.newBuilder("js", file).build();
                context.eval(source);
        }
    }
}

