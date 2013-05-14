#problem 6 - sum square difference
def diff1(range)
  sum_of_square = range.inject {|result,item| result + item**2}
  square_of_sum = (range.reduce(:+))**2
  puts square_of_sum - sum_of_square
end

=begin
Alternative:
Note that this calculation takes the form:
  (x+y)^2 - (x^2+y^2)
  (simplifies to 2xy)
  
So we can calculate the difference generally by in effect removing all the squared terms
=end

def diff2(range)
  diff = 0
  y = range.end
  (range.begin...range.end).each {|x| diff += y * x; y += x}
  puts diff*2
end

def timer
  start = Time.now
  yield
  puts Time.now - start
end

range = 1..100
timer {diff1 range}
timer {diff2 range}
