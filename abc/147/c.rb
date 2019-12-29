n = gets.chomp.to_i
answer_set = []

n.times do |i|
  answer_of_ai_count = gets.chomp.to_i
  answer_of_ai_count.times do |ans|
    x, y = gets.chomp.split.map(&:to_i)
    answer_set[i][x-1] = (y == 1)
  end
end

p answer_set
