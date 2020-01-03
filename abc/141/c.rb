n, k, q = gets.split.map(&:to_i)
a = readlines.map(&:to_i)
necessary_answer_count = q - k + 1
participant_list = {}
(1..n).each { |i| participant_list[i] = 0 }
a.each { |x| participant_list[x] += 1 }
participant_list.each do |k, v|
  if v >= necessary_answer_count
    puts 'Yes'
  else
    puts 'No'
  end
end
