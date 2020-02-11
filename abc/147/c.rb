n = gets.chomp.to_i
answer_set = []
for i in 1..n
  a = gets.to_i
  answer_set[i] = []
  for j in 0..a-1
    answer_set[i][j] = gets.split
  end
end
p answer_set
