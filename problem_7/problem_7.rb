=begin

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

=end

=begin

We can use a library to calculate primes, but where's the fun in that.
We can also calculate whether a number is prime or not by checking every divisor

This will be incredibly slow to calculate naively
Oh well.  I can always improve it later


=end

def is_prime(number)
  divisor = 2
  if number == 2
    return true
  end

  while divisor < number
    if number % divisor == 0
      return false
    end
    divisor += 1
  end

  return true
end

primes = []
number_of_primes = 0
test_number = 2

while number_of_primes < 6
  if is_prime(test_number)
    number_of_primes += 1
    primes.push(test_number)
  end
  test_number += 1
end

puts primes
