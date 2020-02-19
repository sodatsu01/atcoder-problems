h, n = gets.split.map(&:to_i)
magics = {}
n.times do
  a, b =  gets.split.map(&:to_f)
  magics[b] = a if !magics[b] || a / b > magics[b] / b
end
hs = magics.sort_by{ |k, v| -(v / k)}
mana = 0
while h > 0
  a = hs[-1][1]
  b = hs[-1][0]
  for i in 0..hs.length-1
    if hs[i][1] <= h
      a = hs[i][1]
      b = hs[i][0]
      break
    end
  end
  h -= a
  mana += b
end
puts mana.to_i
  # magics[b] <= h && magics[b] / bが最大のやつを選ぶ

# 効率（a / b）順にmagicsを整列
#
