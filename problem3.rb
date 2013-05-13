# problem 3 - largest prime factor of 600851475143

def prime_factors(n)
    #Returns all the prime factors of a positive integer
    factors = []
    d = 2
    while (n > 1)
        while (n%d==0)
            factors << d
            n /= d
        end
        d = d + 1
    end
    factors
end


p prime_factors(600851475143).max
