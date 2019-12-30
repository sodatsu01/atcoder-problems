# a * n + b * dn <= x
a, b, x = gets.split.map(&:to_i)
max_n = 10 ** 9
if a * max_n + b * 10 <= x
  answer = max_n
else
  answer = (1..max_n).bsearch{ |n| a * n + b * n.to_s.length > x} - 1
end
puts answer

