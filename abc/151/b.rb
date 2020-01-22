class Array
  def sum
    a = 0
    self.each {|x| a += x}
    a
  end
end
n, k, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = m * n - a.sum
x = 0 if x < 0
x = -1 if x > k
puts x
