# 03 - Fibonacci Number Location By Length
def find_fibonacci_index_by_length(length)
  sequence = [1, 1]
  loop do
    sequence << sequence[-1] + sequence[-2]
    break if sequence.last.to_s.size >= length
  end
  sequence.size
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
