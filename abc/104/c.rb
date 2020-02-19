d, g = gets.split.map(&:to_i)
h = []
questions = 0
for i in 0..d-1
  h[i] = gets.split.map(&:to_i)
  questions += h[i][0]
end
ans = 99
[true, false].repeated_permutation h.length do |b|
  point = 0
  count = 0
  for i in 0..(h.length - 1)
    if b[i]
      point += (i + 1) * 100 * h[i][0] + h[i][1]
      count += h[i][0]
    end
