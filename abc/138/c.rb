n = gets.to_i
v = gets.split.map &:to_f
while v.count >= 2
  x = v.min
  i = v.index x
  v.delete_at i 
  y = v.min
  i = v.index y
  v.delete_at i 
  v << (x + y) / 2
end
puts v
