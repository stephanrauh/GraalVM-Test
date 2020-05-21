#!/usr/bin/env ruby

def sieve(max)
  # Set up an array with all the numbers from 0 to the max
  primes = (0..max).to_a

  # Set both the first and second positions (i.e., 0 and 1) to nil, as they
  # aren't prime.
  primes[0] = primes[1] = nil
  
  # Iterate through primes array
  counter = 0
  primes.each do |p|
    # Skip if nil
    next unless p

    # Break if we are past the square root of the max value 
    break if p*p > max
    counter += 1
    # Start at the square of the current number, and step through.
    # Go up to the max value, by multiples of the current number, and replace
    # that value with nil in the primes array
    (p*p).step(max,p) { |m| primes[m] = nil }
  end

  # Finally, return the compacted array.
  primes.compact
end

def prime?(num)
  sieve(num).include?(num)
end

$minDuration = 1000000;
$maxDuration = 0;
$cumulatedDuration = 0;
$cumulatedColdStartDuration = 0
$fastedIteration = 0;
$slowestIteration = 0;

def measureCalculation(iteration)
  startTime = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  result = sieve(5*1000*1000)
  endTime = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  duration = (endTime-startTime)*1000;
  puts String(iteration) + ". calculation took " + String(duration.round) + " ms"
  if ($minDuration > duration) 
    $minDuration = duration;
    $fastedIteration = iteration
  end
  if ($maxDuration < duration) 
    $maxDuration = duration;
    $slowestIteration = iteration
  end
  if (iteration <= 10) 
    $cumulatedColdStartDuration += duration;
  end
  $cumulatedDuration += duration;
end

1.step(100) { |i| measureCalculation(i)}

puts "Average duration: " + String($cumulatedDuration.round / 100)
puts "Average cold start: " + String($cumulatedColdStartDuration.round / 10)
puts "Fasted run: " + String($minDuration.round) + " (#" + String($fastedIteration) + ")"
puts "Slowest run: " + String($maxDuration.round)+ " (#" + String($slowestIteration) + ")"