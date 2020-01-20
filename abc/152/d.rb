n = gets.to_i
h = {}
for i in 1..9
  for j in 1..9
    h[[i,j]] = 0
  end
end
for k in 1..n
  i = k.to_s[0].to_i
  j = k.to_s[-1].to_i
  h[[i,j]] += 1 if j !=0
end
count = 0
for i in 1..9
  for j in 1..9
    count += h[[i,j]] * h[[j,i]]
  end
end
puts count
