# 07 - Stringy Strings

def stringy(length, default = 1)
  result = ''
  length.times do |index|
    result += index.even? ? default.to_s : ((default - 1) % 2).to_s
  end
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(8, 1)
