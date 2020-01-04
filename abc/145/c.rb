n = gets.to_i
towns = []
for i in 0..n-1
  towns << gets.split.map(&:to_f)
end
distances = 0
towns.combination 2 do |a, b|
  distances += Math.sqrt((a[0] - b[0])**2 + (a[1] - b[1])**2)
end
puts distances / n * 2
