# 09 - Convert a Number to a String!
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  str = ''
  return '0' if int == 0
  while int > 0
    str = DIGITS[int % 10] + str
    int /= 10
  end
  str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
