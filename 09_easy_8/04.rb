# 04 - All Substrings
def leading_substrings(str)
  str.chars.map.with_index { |_, idx| str[0..idx] }
end

def substrings(str)
  str.chars.map.with_index do |_, idx|
    leading_substrings(str[idx..-1])
  end.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
