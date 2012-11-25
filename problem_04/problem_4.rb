=begin

A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

=begin

Finding that solution can be done two ways.
Either we try to factor out a 6 digit number into two 2 digits

Or we try to build palindromes from 2 digit numbers starting at 99 down
that search space is oddly not that large

=end

def is_palindrome(number)
  number.to_s.reverse == number.to_s
end


palindromes = {}

for i in 100..999
  for j in 100..999
    #puts (i*j).to_s + "=" + i.to_s + "*" + j.to_s
    if is_palindrome(i*j)
      palindromes[i*j] = [i,j]
    end
  end
end

puts palindromes.keys.sort
