# problem 1 - multiples of 3 and 5

all = Array(3...1000)
some = all.select{ |x| x%3==0 or x%5==0}
p some.reduce(:+)
