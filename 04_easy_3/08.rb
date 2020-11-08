# 08 - Palindromic Strings (Part 1)
def palindrome?(container)
  container == container.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?(['a', 7, nil, 7, 'a']) == true
p palindrome?(['a', 7, nil, 7, 'b']) == false
