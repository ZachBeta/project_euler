=begin

A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

=end

=begin
I need a data structure to handle permutations
or do I... if the algorithm for permuting is clear, the millionth step will be too

012
021
102
120
201
210

=end

#solution... calculate them all, give 1000 000th

digits = []
(0..9).each do |i|
  digits << i
end

puts digits.permutation.to_a.sort[999999].inspect
