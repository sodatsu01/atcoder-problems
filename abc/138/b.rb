n = gets.to_i
a = gets.split.map &:to_f
result = 0.0
a.each { |x| result += 1 / x }
puts 1 / result
