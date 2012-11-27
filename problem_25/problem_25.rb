=begin

The Fibonacci sequence is defined by the recurrence relation:

Fn = Fn1 + Fn2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.

What is the first term in the Fibonacci sequence to contain 1000 digits?

=end

# solving this with a lookup is fastest

f = {}
f[1] = 1
f[2] = 1

i = 3
while f[i-1].to_s.length < 1000
  f[i] = f[i-1] + f[i-2]
  i+=1
end

puts "Fibonacci number " + (i-1).to_s
puts "= " + f[i-1].to_s
