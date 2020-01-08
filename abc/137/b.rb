k, x = gets.split.map &:to_i
left = [-1000000, x - k + 1].max
right = [1000000, x + k - 1].min
puts (left..right).to_a.join ' '
