# a * b = N
# ans = a - 1 + b - 1の最小値
n = gets.to_i
a = Math.sqrt(n).to_i
while n % a != 0
  a -= 1
end
b = n / a
puts a + b - 2
