# Experiments with the GraalVM

## /Node.js-Express.js-Mandelbrot
This demo takes the Node.js implementation of GraalVM for a spin. It does something you'd never do with JavaScript: number crunching. Adding insult to injury, it forces GraalVM to run the number crunching demo. Nonetheless, GraalVM does a surpringly good job. Not only does the demo run flawlessly, it's peak performance is close to the performance of native Node.js.

In detail:
- The express server starts noticably slower in GraalVM. Not bad, but sometimes I managed to switch to my browser and reload the page before the server was ready.
- The initial rendering of the Mandelbrot set is roughly five times slower than in Node.js.
- After roughly eight repetions, GraalVM Community Edition reaches its peak performance. Now it's roughly running at 50% of the performance of Node.js.
- Due to license restrictions, I'm not allowed to tell you about the performance of the Enterprise Edition. Just one hint: give it a try.
- When you start the demo and repeat the calculation multiple times, you'll see a line chart showing the effect of subsequent JIT compiler optimizations nicely.
- The repository has a couple of branches. I modified the source code and observed the effect. Generally speaking, Node.js isn't impressed much by low-level optimizations or modularization. GraalVM shows a small but negligible effect, with one exception: replacing complex array accesses by simple variable gave it a 30% performance boost, bringing performance almost to par with Node.js.

Please keep in mind that this is a very unfair benchmark. It's designed to bring GraalVM to its limits. In my book, GraalVM passes this test remarkably well. Plus, it shows that Node.js is supported surprisingly well. You can even run an Express.js server using GraalVM.

## /speculative-optimization
This example shows the effect of speculative method-call optimization and de-optimization. The example shows the speculative optimization for virtual method calls with only one implementation, plus the de-optimization when it turns out there's a second implementation. Likewise, the third method call causes a second de-optimization. On my 2015 MacBook Pro using AdoptOpenJDK 11.0.5+10, this result were like so:

**OpenJDK 64-Bit Server VM AdoptOpenJDK (build 11.0.5+10, mixed mode)**

| Iteration | Counter 1 | Counter 2 | Counter 3 |
| --------: | --------: | --------: | --------: |
|         1 |     36 ms |    209 ms |    320 ms |
|         2 |     35 ms |    197 ms |    314 ms |
|         3 |     29 ms |    197 ms |    312 ms |
|         4 |     29 ms |    196 ms |    311 ms |
|         5 |     29 ms |    196 ms |    310 ms |

GraalVM CE 19.3.0.2 shows a similar result, albeit with several weird speed-ups and slow-down I can't explain yet. However, the result clearly show that GraalVMs also optimizes for three different implementations of a method:

**OpenJDK 64-Bit Server VM GraalVM CE 19.3.0.2 (build 11.0.5+10-jvmci-19.3-b06, mixed mode, sharing)**

| Iteration | Counter 1 | Counter 2 | Counter 3 |
| --------: | --------: | --------: | --------: |
|         1 |     88 ms |     38 ms |     48 ms |
|         2 |     36 ms |    168 ms |    171 ms |
|         3 |    168 ms |    168 ms |    170 ms |
|         4 |     28 ms |    167 ms |    171 ms |
|         5 |     27 ms |    171 ms |    168 ms |