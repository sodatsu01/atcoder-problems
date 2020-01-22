n, m = gets.split.map(&:to_i)
P = []
for i in 1..n
  P[i] = {ac: 0, penalty: 0}
end
for i in 0..m-1
  p, s = gets.split
  if P[p.to_i][:ac] == 0
    if s == 'AC'
      P[p.to_i][:ac] = 1
    else
      P[p.to_i][:penalty] += 1
    end
  end
end
acCount = 0
penCount = 0
P.each do |x|
  next if x == nil
  acCount += x[:ac]
  penCount += x[:penalty] if x[:ac] == 1
end
puts "#{acCount} #{penCount}"
