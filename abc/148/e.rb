def check_factorial(n)
  return 0 if n.odd?
  ans = 0
  for i in 0..25
    ans += n / (10 * 5 ** i)
  end
  ans
end

n = gets.to_i
puts check_factorial n
