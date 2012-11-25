=begin

2520 is the smallest number that can be divided by each of the numbers from 1
to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the
numbers from 1 to 20?

=end

=begin

The trick here is going to be that numbers that include multiples of other numbers
would inflate the result

1
2
3
4

if we naively multiply all numbers, we will "double count" 2

Thus we care that the numbers are coprime before multiplying them

or we care that the numbers ...

the final test is that we can try each number 1..20 and it divides cleanly

so how do we calculate this?

1*2*3*2*5*1...

I just checked the numbers that we already tried against new numbers
for example, when 4 came up I divided as much as possible by prior numbers

=end

trimmed_numbers = []
aggregate_number = 1

for i in 1..20
  trimmed_i = i
  for j in trimmed_numbers
    if trimmed_i%j==0
      trimmed_i /= j
    end
  end
  puts trimmed_i
  aggregate_number *= trimmed_i
  trimmed_numbers.push trimmed_i
end

puts aggregate_number
