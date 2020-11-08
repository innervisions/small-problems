# 09 - Palindomic Strings (Part 2)
def palindrome?(container)
  container == container.reverse
end

def real_palindrome?(string)
  chars = string.downcase.chars.select { |char| /[a-z0-9]/.match(char) }
  palindrome?(chars)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
