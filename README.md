# Experiments with the GraalVM

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