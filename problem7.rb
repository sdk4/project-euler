# problem 7 - 10001st prime

def is_prime?(x)
  (2..(Math.sqrt(x))).all?{|y| x % y != 0}
end

def find_prime_index(big_index)
 #begin at 3 (2nd prime)
  counter = 3
  index = 1
 
  while true
    index += 1 if is_prime?(counter)
    return counter if index == big_index
    counter += 2 # skip the even numbers
  end
end

puts find_prime_index(10001)
