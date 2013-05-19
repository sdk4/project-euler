# problem 10 - summation of primes (below 2 million)

def is_prime?(x)
  (2..(Math.sqrt(x))).all?{|y| x % y != 0}
end

def prime_sum(big_number) #brute-force trail division
  sum = 2
 #begin at 3 (2nd prime)
  prime = 3
  index = 1
 
  while prime < big_number
    sum += prime if is_prime?(prime)
    prime += 2 # skip the even numbers
  end
  sum
end

puts prime_sum(2e6)
