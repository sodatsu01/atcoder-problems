def attack(h)
  if h == 1
    return 0
  else
    h = (h / 2).floor
    return [h, h]
  end
end

h = gets.to_f
a = []
a << attack(h)
puts a
while a[-1] != 0
  a << attack(a[-1])
end
puts a
puts a.length
