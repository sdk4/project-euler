num = (1..100).inject(:*)
result = 0
arr = num.to_s.split("").each {|x| result += x.to_i}
puts result
