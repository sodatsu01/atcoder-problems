a, b = gets.split.map(&:to_i)
ans = -1 if a > 9 || b > 9
ans = a * b if a <= 9 && b <=9
puts ans
