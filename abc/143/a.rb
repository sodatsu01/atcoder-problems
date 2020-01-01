a, b = gets.split.map(&:to_i)
ans = [0, a - 2 * b].max
puts ans
