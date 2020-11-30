# 02 - Rotation (Part 2)
def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(number, rightmost)
  digits = number.to_s.chars
  digits[-rightmost..-1] = rotate_array(digits[-rightmost..-1])
  digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
