# 07 - Convert a String to a Number
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}
HEXITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def string_to_integer(str)
  int = 0
  str.chars.reverse.each_with_index do |char, idx|
    int += DIGITS[char] * 10**idx
  end
  int
end

def hexadecimal_to_integer(str)
  int = 0
  str.chars.reverse.each_with_index do |char, idx|
    int += HEXITS[char.upcase] * 16**idx
  end
  int
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p hexadecimal_to_integer('4D9f') == 19871
