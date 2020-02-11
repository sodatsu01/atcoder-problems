MOD = 10 ** 9 + 7
def comb_mod(a, b)
  return 0 if a < b
  return comb_mod(a, a - b) if b > a - b
  mul = div = 1
  b.times do |i|
    mul *= a - i
    div *= i + 1
    mul %= MOD
    div %= MOD
  end
  mul * pow_mod(div, MOD - 2) % MOD
end

def pow_mod(a, pow)
  if pow == 0
    1
  elsif pow.odd?
    a * pow_mod(a, pow - 1) % MOD
  else
    half = pow_mod(a, pow / 2)
    half * half % MOD
  end
end

x, y = gets.split.map(&:to_i)
if (x + y) % 3 != 0
  puts 0
  exit
end

# X = n + 2m
# Y = 2n + m
# 2x - y = 3m
# m = 2/3x - 1/3 x
m = (2 * x - y) / 3
n = x - 2 * m

if m < 0 || n < 0
  puts 0
  exit
end
m %= 10**9 + 7
n %= 10**9 + 7

puts comb_mod(n+m, n)
