# Experiments with the GraalVM

## /speculative-optimization
This example shows the effect of speculative method-call optimization and de-optimization. On my 2015 MacBook Pro using AdoptOpenJDK 11.0.5+10, this result were like so:

| Iteration | Counter 1 | Counter 2 | Counter 3 |
| --------: | --------: | --------: | --------: |
|         1 |     36 ms |    209 ms |    320 ms |
|         2 |     35 ms |    197 ms |    314 ms |
|         3 |     29 ms |    197 ms |    312 ms |
|         4 |     29 ms |    196 ms |    311 ms |
|         5 |     29 ms |    196 ms |    310 ms |