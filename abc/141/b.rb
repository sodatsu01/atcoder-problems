s = gets.chomp.chars
ans = 'Yes'
s.each_with_index do |x, index|
  if index % 2 == 1 && x == 'R'
    ans = 'No'
    break
  end
  if index % 2 == 0 && x == 'L'
    ans = 'No'
    break
  end
end
puts ans
