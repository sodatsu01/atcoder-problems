n = gets.to_i
a = gets.split.map(&:to_i)
i = 1
# ah = {}
# a.each do |x|
  # ah[i] = x
  # i += 1
# end
# ab = ah.sort_by { |k, v| v }.to_h
# puts ab.keys.join(' ')
ans = []
a.each do |cnt|
  ans[cnt - 1] = i
  i += 1
end
puts ans.join ' '
