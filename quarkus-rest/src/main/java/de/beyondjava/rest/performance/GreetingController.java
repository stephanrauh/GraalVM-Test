package de.beyondjava.rest.performance;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.concurrent.atomic.AtomicLong;

@Path("/greeting")
public class GreetingController {
    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    static {
        System.out.println("GreetingControler has been loaded");
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Greeting greeting() {
        return new Greeting(counter.incrementAndGet(), String.format(template, "world"));
    }
}