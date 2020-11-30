# 03 - Rotation (Part 3)
def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(number, rightmost)
  digits = number.to_s.chars
  digits[-rightmost..-1] = rotate_array(digits[-rightmost..-1])
  digits.join.to_i
end

def max_rotation(number)
  size = number.to_s.size
  size.downto(2) { |idx| number = rotate_rightmost_digits(number, idx) }
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# Further Exploration
# maintain zeroes by returing strings
def rotate_rightmost_digits_fe(number_str, rightmost)
  digits = number_str.chars
  digits[-rightmost..-1] = rotate_array(digits[-rightmost..-1])
  digits.join
end

def max_rotation_fe(number)
  str = number.to_s
  size = str.size
  size.downto(2) { |idx| str = rotate_rightmost_digits_fe(str, idx) }
  str
end

puts
p max_rotation_fe(735291) == '321579'
p max_rotation_fe(105) == '015'
p max_rotation_fe(34007) == '40370'
