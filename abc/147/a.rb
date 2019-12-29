class Array
  def sum
    a = 0
    self.each do |n|
      a += n
    end
    a
  end
end
a = gets.split.map(&:to_i)
puts 'bust' if a.sum > 21
puts 'win' if a.sum <= 21
