require 'prime'

def problem_function(n)
  return 1 if n < 2
  a = 1
  while n > 0
    a *= n
    n -= 2
  end
  return a
end

# def problem_func(n)
  # a = []
  # for n > 0
    # a << n
    # n -= 2
  # end
  # return a
# end
#
n = gets.to_i
prime_factor = problem_function(n).prime_division
p prime_factor
