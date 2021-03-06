# GraalVM 20.0.0, Java 11.0.6:

## Performance (all values in milliseconds):

### Simple Measurement:
          procedural,   7.4,   4.6,   2.6,   2.1,   1.9,   2.1,   1.8,   1.5,   1.5,   1.5,   1.5,   1.8,   1.7,   1.9,   1.7,   1.6,   1.7,   1.5,   1.7,   1.5,   1.5,   1.7,   2.1,   1.5,   1.7,   1.6,   1.7,   1.6
partially functional,   9.6,   5.5,   5.3,   6.4,   8.1,   2.8,   1.7,   1.3,   1.4,   1.4,   1.6,   1.6,   1.5,   1.4,   1.5,   1.5,   1.7,   1.5,   1.6,   1.6,   1.5,   1.4,   1.3,   1.5,   1.4,   1.6,   1.8,   1.7
    fully functional,  96.9,  18.0,  11.7,  11.7,  11.5,  11.1,  10.6,  10.7,  10.7,  10.8,   9.8,  16.5,   9.1,   8.6,   8.1,   7.7,   7.5,   7.8,   7.6,   7.5,   7.5,   7.6,   7.8,   8.7,   8.6,   8.7,   8.2,   8.4
  compact functional,  58.2,  11.1,  11.1,  11.0,  10.4,   9.9,  10.0,  10.0,   9.5,   9.4,   9.4,   9.6,   9.4,   9.9,   9.5,  10.0,   9.6,   9.7,   9.7,  10.1,   9.9,   9.3,   9.6,   9.8,   9.3,   9.3,   9.8,   9.6

### Measurement using Lambdas:
          procedural,   6.7,   4.4,   1.9,   2.0,   2.0,   2.1,   1.6,   1.4,   1.4,   1.5,   1.4,   1.6,   1.4,   1.8,   1.4,   1.4,   1.4,   1.3,   1.4,   1.5,   1.5,   1.4,   1.7,   1.4,   1.5,   1.4,   1.4,   1.5
partially functional,   8.0,   5.3,   5.1,   5.1,   7.2,   2.8,   1.4,   1.3,   1.3,   1.4,   1.4,   1.3,   1.4,   1.6,   1.4,   1.4,   1.3,   1.3,   1.4,   1.3,   1.4,   1.4,   1.4,   1.3,   1.4,   1.5,   1.3,   1.4
    fully functional,  95.9,  12.1,  11.3,  11.1,  11.0,  10.4,  10.4,  10.1,  10.1,  10.2,   9.9,  16.8,   9.1,   7.7,   7.4,   7.3,   7.4,   7.4,   7.6,   7.4,   8.3,   7.8,   7.5,   8.2,   8.0,   8.6,   9.3,   8.3
  compact functional,  51.7,  14.8,  12.1,  10.9,  10.6,  10.2,  10.0,  10.0,   9.7,   9.9,   9.7,   9.5,  10.0,   9.4,   9.3,   9.5,   9.4,   9.8,   9.7,  10.7,  10.1,  11.0,   9.8,  10.1,   9.6,   9.8,   9.8,   9.8

# AdoptOpenJDK 11.0.5:

## Performance (all values in milliseconds):

### Simple Measurement:
          procedural,   8.0,   5.1,   1.5,   1.4,   1.4,   1.5,   1.2,   0.9,   0.9,   0.8,   0.8,   0.9,   0.8,   0.8,   0.8,   0.9,   0.9,   0.9,   0.9,   0.8,   0.9,   0.9,   0.8,   0.8,   0.9,   0.8,   0.8,   0.9
partially functional,   9.3,   4.9,   1.1,   0.9,   0.9,   0.9,   0.9,   0.9,   0.9,   1.0,   1.0,   0.9,   0.9,   0.9,   0.9,   0.8,   0.9,   0.8,   0.8,   0.8,   1.0,   0.8,   0.8,   0.8,   0.9,   0.9,   0.8,   0.8
    fully functional,  68.2,   9.1,   8.6,   8.1,   8.9,   7.4,   7.1,   7.1,   7.1,   6.7,   7.3,   8.5,   6.0,   5.8,   5.9,   5.6,   5.5,   5.6,   5.5,   5.9,   5.8,   5.6,   5.6,   5.8,   6.1,   6.3,   6.1,   7.0
  compact functional,  31.8,  16.8,  13.2,  13.1,  12.0,  12.7,  12.1,  12.1,  12.2,  12.6,  12.3,  12.1,  11.9,  11.9,  12.3,  12.2,  11.9,  12.5,  12.4,  12.0,  12.5,  12.3,  12.5,  12.2,  12.7,  12.3,  12.4,  12.2


### Measurement using Lambdas:
          procedural,   8.1,   5.0,   1.4,   1.3,   1.4,   1.4,   1.2,   0.9,   0.8,   1.0,   0.9,   0.8,   0.8,   0.9,   0.9,   0.9,   0.9,   0.9,   0.9,   0.9,   0.8,   0.8,   0.9,   0.8,   0.8,   0.9,   0.9,   0.9
partially functional,   9.0,   5.6,   1.1,   0.9,   0.9,   0.9,   0.9,   0.8,   0.9,   1.0,   0.9,   0.8,   0.8,   0.8,   0.8,   0.8,   0.9,   0.8,   0.8,   0.8,   0.8,   0.8,   0.8,   0.8,   0.8,   0.8,   0.8,   0.9
    fully functional,  51.6,   8.5,   8.2,   7.4,   7.8,   7.6,   6.9,   7.0,   7.0,   7.3,   6.1,   7.5,   5.4,   5.0,   5.6,   5.2,   5.2,   5.6,   4.9,   5.0,   5.1,   5.3,   5.0,   5.5,   6.2,   6.9,   6.2,   6.0
  compact functional,  29.9,  14.1,  13.6,  13.1,  13.1,  13.1,  13.3,  12.8,  12.9,  13.1,  13.0,  12.2,  12.5,  12.2,  12.2,  12.0,  12.0,  12.1,  11.8,  12.3,  12.2,  11.6,  13.0,  12.1,  12.0,  12.1,  12.3,  12.4
