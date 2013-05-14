# problem 4 - Largest Palindrome Product of two 3-digit numbers

def is_palindrome?(i)
  return true if i.to_s == i.to_s.reverse
  false
end
 
def find_palindrome()
max = 0
  for i in 100..999
    for j in 100..999
      product = i*j
      max = product if is_palindrome?(product) and product > max
    end
  end
  max
end

puts find_palindrome

  

