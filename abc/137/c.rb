n = gets.to_i
s = readlines
count = 0
s_hash = Hash.new
s.each do |line|
  l = line.chars.sort.join.to_sym
  if s_hash.include? l
    count += s_hash[l]
    s_hash[l] += 1
  else
    s_hash[l] = 1
  end
end
puts count
