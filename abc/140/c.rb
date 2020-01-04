class Array
  def sum
    result = 0
    self.each { |x| result += x }
    result
  end
end
n = gets.to_i
b = gets.split.map(&:to_i)
a = []
(0..n-1).each do |i|
  if i == 0 
    a[i] =  b[i]
  elsif i == n - 1
    a[i] = b[i - 1]
  else
    a[i] = [b[i], b[i - 1]].min
  end
end
puts a.sum
