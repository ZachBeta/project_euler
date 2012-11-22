def fib(n)
  if n <= 0
    return nil
  elsif n == 1
    return 1
  elsif n == 2
    return 2
  else
    return fib(n-1) + fib(n-2)
  end
end

for i in 1..10
  puts fib(i)
end
#looks ok, even though I didn't properly test, just eyeballed

sum = 0
i = 1
last_fib = fib(1)
while last_fib <= 4000000
  if last_fib % 2 ==0
    sum += last_fib
    puts sum
  end
  last_fib = fib(i)
  i = i+1
end
