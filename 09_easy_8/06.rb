# 06 - fizzbuzz
def fizzbuzz(starting, ending)
  idx = starting
  loop do
    print idx unless idx % 3 == 0 || idx % 5 == 0
    print 'Fizz' if idx % 3 == 0
    print 'Buzz' if idx % 5 == 0
    break if idx == ending
    print ', '
    idx += 1
  end
  puts
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
