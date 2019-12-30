require 'prime'

prime_list = Prime.each(10**6).to_a
X = gets.to_i
a = prime_list.select { |x| X <= x}
puts a.first
