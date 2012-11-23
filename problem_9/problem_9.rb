=begin

A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end

=begin

The naive solution is to check every possible combination

=end

for i in (1..998)
  for j in (i..999)
    k = 1000 - i - j
    if i*i + j*j == k*k
      puts i
      puts j
      puts k
      puts i*j*k
    end
  end
end
