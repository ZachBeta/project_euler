# Largest prime factor of 13195 is 29.  Factors are 5, 7, 13, 29

starting_number = 600851475143

# we need to factor this
# naiively we can just try every possible number and keep dividing
# like I did back on a ti83
# for i in 0 to n
#   if n%i == 0
#     n/= i
# keep it going until you finish
#
# I'm already starting to yak shave my way through this
# what's stopping me... not having specs?  forget em
#
#

test_number = starting_number
divisor = 2
valid_divisors = []

while divisor <= test_number
  if test_number % divisor == 0
    test_number = test_number / divisor
    valid_divisors.push divisor
  end
  divisor += 1
end

puts valid_divisors
