=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end

# take the prime checker from the previous problem
#

require 'time_diff'

def is_prime(number)
  divisor = 2
  test_number = Math.sqrt(number)

  while divisor <= test_number
    if number % divisor == 0
      return false
    end
    divisor += 1
  end

  return true
end


primes = []
sum_of_primes = 0
test_number = 2

start_time = Time.now

puts "Started: " + start_time.to_s

while test_number < 2000000
  if is_prime(test_number)
    sum_of_primes += test_number
    puts test_number
  end
  test_number += 1
end

end_time = Time.now

puts "Duration: " + Time.diff(start_time,end_time)[:diff]

puts sum_of_primes
