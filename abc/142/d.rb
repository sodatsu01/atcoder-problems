n = gets.to_i
l = gets.split.map(&:to_i)
ans = []
l.combination(3) do |a, b, c|
  if a < b + c && b < c + a && c < a + b
    ans << [a, b, c]
  end
end
puts ans.count
