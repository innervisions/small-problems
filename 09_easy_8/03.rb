# 03 - Leading Substrings
def leading_substrings(str)
  str.chars.map.with_index { |_, idx| str[0..idx] }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
