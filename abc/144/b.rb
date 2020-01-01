candidates = []
(1..9).each do |x|
  (1..9).each do |y|
    candidates.push x * y
  end
end
n = gets.to_i
ans = 'Yes' if candidates.include? n
ans = 'No' if !candidates.include? n
puts ans
