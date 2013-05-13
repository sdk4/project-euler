# problem 2 - even fibonacci numbers

def even_fib(n)
  i,first,second = 0,0,1
  sequence = []
  while i <= n
    i = first + second
    sequence << i if i.even?
    # puts sequence
    first = second
    second = i
  end
  sequence
end
puts even_fib(4e6).reduce(:+)
