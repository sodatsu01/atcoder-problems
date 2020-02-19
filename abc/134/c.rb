n = gets.to_i
a = []
n.times {a << gets.to_i }
sa = a.sort
ma = sa[-1]
na = sa[-2]
for i in 0..n-1
  puts na if a[i] == ma
  puts ma if a[i] != ma
end
