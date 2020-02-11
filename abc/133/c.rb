l, r = gets.split.map(&:to_i)
mark = 2020
for i in l..r - 1
  for j in i+1..r
    if i * j % 2019 < mark
      mark = i * j % 2019     
    end
    break if mark == 0
  end
  break if mark == 0
end
puts mark
