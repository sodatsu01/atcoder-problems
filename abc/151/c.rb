n, m = gets.split.map(&:to_i)
P = Array.new(n) {{ac: 0, penalty: 0}}
# Array.newに渡された初期化オブジェクトはP[n]で全て同一オブジェクトを参照するから下の書き方だとバグる
# P = Array.new(n, {ac: 0, penalty: 0})
# P = []
# for i in 1..n
#   P[i] = {ac: 0, penalty: 0}
# end
for i in 0..m-1
  p, s = gets.split
  p = p.to_i - 1
  if P[p][:ac] == 0
    if s == 'AC'
      P[p][:ac] = 1
    else
      P[p][:penalty] += 1
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
