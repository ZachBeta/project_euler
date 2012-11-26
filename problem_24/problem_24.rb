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

a search tree won't help because I need the millionth

012 -> 021
flip 2nd and 3rd

021 -> 102
3rd to 1st, 1st to 2nd, 2nd to 3rd

an array will not suffice

3 "objects"
6 permutations

3*2*1

with 10 characters we have 10*9*8*7*6*5*4*3*2*1

3 628 800 options

=end

#solution... calculate them all, give 1000 000th

digits = []
(0..2).each do |i|
  digits << i
end


permutations = []
for i in (0..digits.length-1)
  digits_copy = digits.dup

  i_digit = digits_copy.delete_at(i)

  for j in (0..digits_copy.length-1)
    j_digit = digits_copy.delete_at(j)

    for k in (0..digits_copy.length-1)
      k_digit = digits_copy.delete_at(k)

      permutations << [i_digit, j_digit, k_digit]
    end
  end
end

=begin

...012
0...12
01...2
012
02...1
021


=end
def inception(permutation_so_far, digits_left)
  #base case, permutation is finished
  if digits_left.length == 0
    return permutation_so_far
  end

  #or we need to calculate all of them
  permutations = []
  for i in (0..digits_left.length-1)
    temp_digits_left = digits_left.dup
    temp_digits_left.delete_at(i)
    permutations << inception(permutation_so_far + [digits_left[i]], temp_digits_left)
  end

  return permutations
end

permutations = inception([],digits)
puts permutations.inspect


