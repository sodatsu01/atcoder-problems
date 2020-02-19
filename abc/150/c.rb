n = gets.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)
h = []
for i in 1..n
  h << i
end
s = h.permutation(n).to_a
puts (s.find_index(p) - s.find_index(q)).abs
