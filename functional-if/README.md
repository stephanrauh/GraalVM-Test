# if vs. Optional.filter()

## What the project does
This project examines the performance impact of functional programming in Java. In particular, the project compares

* traditional procedural programming to using functional programming
* on GraalVM 20.0.0 and AdoptOpenJDK 11.0.5.

## How to run the benchmark

Basically, the project is a traditional Maven project. The classes running the benchmark are `Measure` and
`MeasureWithLambda`. They both run four different flavors of the same algorithm. To eliminate (or display)
the effect of the JIT compiler, the tests are repeated 30 times.

The file `benchmark.sh` compiles the project files with your default Java JDK and an alternative JDK.
The paths in the file are hardwired to my file system, so you'll have to modify the path to the alternative JDK.

## The result

You can see the results of my tests in the file `results.txt`.

## Why I started the project

Recently, the Java world is developing a peculiar programming style. It's a unique trait of Java. I don't observe 
this trend in any other programming language, with the exception of LISP.

Many programmers have begun to use streams and optional whenever possible. Among other thing, they've started
to avoid `if` statements. They can be replaced with a combination of `Optional.of()`, `filter()`, and `orElse()`. 
Like it or not, that's become a frequent pattern.

My curiosity was piqued when we talked about performance. To me, it's obvious that the Java approach
to functional programming costs a lot of performance. That's because I know how it's implemented. Most
programmers disagree. So this project runs a couple of benchmarks with different flavors of the same algorithm.

