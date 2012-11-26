def divisors(n)
  divisors = []
  sqrt = Math.sqrt(n)

  sqrt_loop_end = sqrt.floor + 1
  for i in (1..sqrt_loop_end).each do
    if n % i == 0
      divisors << i unless divisors.include?(i)
      unless i==1 or i*i==n
        divisors << n/i unless divisors.include?(n/i)
      end
    end
  end

  return divisors
end
