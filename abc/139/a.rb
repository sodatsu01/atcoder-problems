s = gets.chars
t = gets.chars
count = 0
(0..2).each { |i| count += 1 if s[i] == t[i] }
puts count
