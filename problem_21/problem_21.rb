=begin

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

def d(n)
  divisors = []
  sqrt = Math.sqrt(n)

  sqrt_loop_end = sqrt.floor + 1
  for i in (1..sqrt_loop_end).each do
    if n % i == 0
      divisors << i
      unless i==1 or i*i==n
        divisors << n/i
      end
    end
  end

  puts divisors.inspect
  puts divisors.reduce(0,:+)
end

d(220)
d(284)
