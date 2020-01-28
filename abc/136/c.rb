n = gets.to_i
h = gets.split.map(&:to_i)
n -= 1
curMin = h[n]
answer = 'Yes'
while n >= 0
  if h[n] >= curMin + 2
    answer = 'No'
    break
  end
  curMin = [ curMin, h[n] ].min
  n -= 1
end
puts answer
