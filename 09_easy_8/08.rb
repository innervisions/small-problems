# 08 - Double Chars (Part 2)
def double_consonants(str)
  str.chars.map do |char|
    char.match(/[a-z&&[^aeiou]]/i) ? char * 2 : char
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
