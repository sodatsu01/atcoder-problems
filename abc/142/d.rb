a, b = gets.split.map(&:to_i)
def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end
g = gcd(a, b)
def factorize(n)
  res = {}
  i = 2
  while i ** 2 < n
    while n % i == 0
      n /= i
      res[i] ||= 0
      res[i] += 1 if res[i]
    end
    i += 1
  end
  res[n] = 1 if n != 1
  res
end
f = factorize g
puts f.size + 1

