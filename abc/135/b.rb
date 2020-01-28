n = gets.to_i
p = gets.split.map(&:to_i)
answer = 'NO'
count = 0
for i in 0..n-1
  count += 1 if i + 1 != p[i]
end
if count <= 2
  puts 'YES'
else
  puts 'NO'
end
