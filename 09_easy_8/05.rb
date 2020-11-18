# 05 - Palindromic Substrings
def leading_substrings(str)
  str.chars.map.with_index { |_, idx| str[0..idx] }
end

def substrings(str)
  str.chars.map.with_index do |_, idx|
    leading_substrings(str[idx..-1])
  end.flatten
end

def palindrome?(str)
  # str = str.downcase.gsub(/[^a-z0-9]/, '')
  # FE: Uncomment above for case insensitive / ignore non alphanumeric
  str.size > 1 && str == str.reverse
end

def palindromes(str)
  substrings(str).select { |sub_str| palindrome?(sub_str) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
