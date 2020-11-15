# 04 - Swap Case
def swapcase(str)
  chars = str.chars.map do |char|
    char =~ /[A-Z]/ ? char.downcase : char.upcase
  end
  chars.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
