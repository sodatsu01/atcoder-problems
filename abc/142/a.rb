n = gets.to_f
a = ((n / 2) / n) if n % 2 == 0
a = (((n / 2).floor + 1) / n) if n % 2 == 1
puts a
