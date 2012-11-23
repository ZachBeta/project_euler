num = 2**1000
str = num.to_s

sum = 0

for i in (0..str.length)
  sum += str[i].to_i
end

puts sum
