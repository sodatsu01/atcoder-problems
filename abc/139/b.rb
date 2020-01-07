a, b = gets.split.map(&:to_i)
sockets = 1
count = 0
until sockets >= b
  count += 1
  sockets += a - 1
end
puts count
