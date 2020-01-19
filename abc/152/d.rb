n = gets.to_i
count = 0
for i in 1..n
  s = i.to_s
  if s.length == 1
    count += 1
  elsif s[0] == s[-1]
    count += s.length * 2 - 1
  elsif s[0] > s[-1] && s[-1] != 0
    count += 11 ** (s.length - 2)
  end
end
puts count
