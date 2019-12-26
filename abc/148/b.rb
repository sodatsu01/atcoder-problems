n = gets.to_i
s, t = gets.split
a = ""
for i in 0..n-1
  a << s[i]
  a << t[i]
end
puts a
