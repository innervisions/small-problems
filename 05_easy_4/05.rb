# 05 - Multiples of 3 and 5
def multisum(upper_limit)
  multiples = (1..upper_limit).select do |number|
    number % 3 == 0 || number % 5 == 0
  end
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
