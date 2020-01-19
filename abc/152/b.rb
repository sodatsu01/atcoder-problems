a, b  = gets.split
if a < b
  puts a * b.to_i
elsif b < a
  puts b * a.to_i
else
  puts a * b.to_i
end
