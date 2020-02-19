def exp(n)
  return 0 if n == 0
  sum = 0
  sum = (n * (n + 1)) / 2
  sum.to_f / n
end

n, k = gets.split.map(&:to_i)
p = gets.split.map{ |x| exp(x.to_i) }
s= []
s[0] = p[0]
for i in 1..n-1
  s[i] = s[i-1] + p[i]
end
max = s[k-1]
for j in k..n-1
  max = s[j] - s[j-k] if max < s[j] - s[j-k]
end
puts max
