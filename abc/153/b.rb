class Array
  def sum
    res = 0
    self.each {|x| res += x}
    res
  end
end

h, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = 'No'
ans = 'Yes' if a.sum >= h
puts ans
