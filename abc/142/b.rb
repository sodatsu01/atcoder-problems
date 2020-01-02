n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
count = 0
h.each {|x| count += 1 if x >= k}
puts count
