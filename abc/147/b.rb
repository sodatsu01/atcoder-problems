s = gets
n = s.length - 1
b = -2
count = 0
for i in 0..(n/2)
  if s[i] != s[b]
    count += 1 
    s[i] = s[b]
  end
  b -= 1
end
p count
