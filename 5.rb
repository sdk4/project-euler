#problem 5 - smallest multiple (1..20)

## if a number is evenly-divisible by 20, this is also true for 1,2,4,5,10
## Divisible by 15, then also by 3,5 etc

## therefore, only need to check 10..20 :)

def smallest_multiple
  num = 2520
  while true
    return num if (10..20).all? {|i| num%i == 0}
    num += 20
  end
end

puts smallest_multiple
