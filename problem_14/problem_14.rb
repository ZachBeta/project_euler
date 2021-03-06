=begin

The following iterative sequence is defined for the set of positive integers:

n  n/2 (n is even)
n  3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end

def calc_even(num)
  num/2
end

def calc_odd(num)
  3*num +1
end

# thought about calling recursive... stack overflow imminent

def count_chain(num)
  count = 1
  value = num
  while value != 1
    if value % 2 == 0
      value = calc_even(value)
    else
      value = calc_odd(value)
    end
    count += 1
  end

  return count
end

max_count = 0
starting_num = 0
(1..1000000).each do |num|
  count = count_chain(num)
  if count > max_count
    max_count = count
    starting_num = num
    puts starting_num.to_s + " -> " + max_count.to_s
  end
end


# this is super slow... I wonder if it can be done faster
