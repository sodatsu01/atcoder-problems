n, k = gets.split.map(&:to_i)
r, s, p = gets.split.map(&:to_i)
t = gets.chomp.chars
for i in k..n-1
  if t[i - k] == t[i]
    t[i] = 'n'
  end
end
point = 0
point += r * t.count('s')
point += s * t.count('p')
point += p * t.count('r')
puts point
