a, b, k = gets.split.map(&:to_i)
if a >= k
  a -= k
else 
  b -= k - a
  a = 0
  if b < 0
    b = 0
  end
end
puts "#{a} #{b}"
