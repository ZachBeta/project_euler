=begin

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

=end


#require 'numbers_and_words'
# that wasn't working
# we gotta break it up into triplets
#


def to_word(num)
  word_lookup = {}
  word_lookup[0] = ""
  word_lookup[1] = "one "
  word_lookup[2] = "two "
  word_lookup[3] = "three "
  word_lookup[4] = "four "
  word_lookup[5] = "five "
  word_lookup[6] = "six "
  word_lookup[7] = "seven "
  word_lookup[8] = "eight "
  word_lookup[9] = "nine "
  word_lookup[10] = "ten "
  word_lookup[11] = "eleven "
  word_lookup[12] = "twelve "
  word_lookup[13] = "thirteen "
  word_lookup[14] = "fourteen "
  word_lookup[15] = "fifteen "
  word_lookup[16] = "sixteen "
  word_lookup[17] = "seventeen "
  word_lookup[18] = "eighteen "
  word_lookup[19] = "nineteen "

  word_lookup[20] = "twenty "
  word_lookup[30] = "thirty "
  word_lookup[40] = "forty "
  word_lookup[50] = "fifty "
  word_lookup[60] = "sixty "
  word_lookup[70] = "seventy "
  word_lookup[80] = "eighty "
  word_lookup[90] = "ninety "
  trimming_num_str = num.to_s
  puts trimming_num_str
  word = ""

  if trimming_num_str.length == 4
    word += "one thousand "
    trimming_num_str = trimming_num_str[1,trimming_num_str.length-1]
    puts trimming_num_str
  end

  if trimming_num_str.length == 3
    hundreds = trimming_num_str[0].to_i
    if hundreds > 0
      word += word_lookup[hundreds] + "hundred "
      tens_and_ones = trimming_num_str[1,2].to_i
      if tens_and_ones > 0
        word += "and "
      end
    end
    trimming_num_str = trimming_num_str[1,trimming_num_str.length-1]
    puts trimming_num_str
  end

  if trimming_num_str.length == 2
    tens_and_ones = trimming_num_str.to_i
    if tens_and_ones <= 20
      word += word_lookup[tens_and_ones]
      trimming_num_str = ""
    else
      ones = tens_and_ones % 10
      tens = tens_and_ones - ones
      word += word_lookup[tens]
      word += word_lookup[ones]
    end
  else
    word += word_lookup[trimming_num_str.to_i]
  end


  return word
end

def count_letters(num)
  puts to_word(num).length
end

puts to_word(1)
puts to_word(12)
puts to_word(123)
puts to_word(1234)

puts count_letters(115)
puts count_letters(342)

