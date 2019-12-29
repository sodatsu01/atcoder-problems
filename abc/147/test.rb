catch :ok do
  p 'hello'
  for i in 1..9
    p 'search'
    if i == 10
      p 'find'
      throw :ok
      p 'find!!!'
    end
    p 'not'
  end
  p 'not find'
end
p 'end'
