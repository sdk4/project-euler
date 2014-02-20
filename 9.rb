# problem 9 - special pythagorean triplet

def find_triple
  (1..1000).each do |a|
    ((a + 1)..1000).each do |b|
        c = 1000 - a - b
        if (a**2 + b**2) == c**2
            puts "triple abc is #{[a,b,c]}"
            puts "product abc is #{a*b*c}"
            return
        end
      end
    end
end

find_triple

#---------------------------------------------------------------------
# attempt at implementing fibonacci's method for generating triples
def find_triple2 #this function generates only primitive triples
  # generate odd numbers
  odd = (1..2000).step(2).to_a
  # generate square numbers
  square = odd.collect{|x| x*x}
  square.slice!(0)      #remove first square (1)
  square.each do |k|    #pick a square number
    a = Math.sqrt(k)    # a^2 = k
    n = odd.find_index(k)   #get index of k in odd number sequence
    b = Math.sqrt(odd[0...n].reduce(:+))  # get sum of terms up to k-1 terms
    c = Math.sqrt(odd[0..n].reduce(:+))   # calculate c from sum of k terms
    puts a,b,c
    puts "new"
    total = a + b + c
    puts "The triple is %d,%d,%d" % a,b,c if total == 1000
    return if total > 1000 
  end
end


