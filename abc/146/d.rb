n = gets.to_i

graph = []
lines = []

for i in 0..n-2
  a, b = gets.split.map(&:to_i)
  graph[a - 1] ||= []
  graph[b - 1] ||= []
  graph[a - 1] << b - 1
  graph[b - 1] << a - 1
  lines << [a - 1, b - 1]
end
k = 0
q = [0]
line_colors = {}
used = [true]
colors = []

while node = q.shift do
  color = 1
  graph[node].each do |c|
    next if used[c]
    if colors[node] == color
      color += 1
    end
    colors[c] = color
    line_colors[[node, c]] = color
    q << c
    used[c] = true
    color += 1
  end
end
colors.shift
puts colors.max
