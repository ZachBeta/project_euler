=begin

The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

sum_of_squares = 0
sum = 0

for i in 1..10
  sum_of_squares = sum_of_squares + i*i
  sum += i
end

square_of_sum = sum * sum

puts square_of_sum
puts sum_of_squares
puts square_of_sum - sum_of_squares
