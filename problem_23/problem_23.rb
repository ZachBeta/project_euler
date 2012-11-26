=begin


A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

=end

load 'divisors.rb'

# how do we find numbers that can't be the sum of abundant numbers?
# all numbers over 28123 can be proven
# we need to search underneath
# find all abundant numers underneath that
# combinatorially try to combine them?

def abundant?(num)
  return num < divisors(num).reduce(0,:+)
end

abundant_numbers = []
abundant_number_sums = {}

(1..28123).each do |i|
  abundant_number_sums[i] = true
  if abundant?(i)
    abundant_numbers << i
  end
end

puts "Abundant numbers calculated"

for i in (0..abundant_numbers.length-1) do
  for j in (i..abundant_numbers.length-1) do
    sum = abundant_numbers[i] + abundant_numbers[j]
    if sum < 28123
      abundant_number_sums[sum] = false
    end
  end
end

puts "Abundant sums calculated"

total_sum = 0
(1..28123).each do |i|
  if abundant_number_sums[i] == true
    total_sum += i
  end
end

puts total_sum
