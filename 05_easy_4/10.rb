# 10 - Convert a Signed Number to a String!
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

def signed_integer_to_string(int)
  str = integer_to_string(int.abs)
  case int <=> 0
  when -1 then '-' + str
  when 1 then '+' + str
  else        str
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
