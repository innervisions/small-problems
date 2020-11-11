# 09 - ddaaiillyy ddoouubbllee
def crunch(str)
  crunched_str = ''
  str.chars.each_with_index do |char, idx|
    crunched_str << char unless idx > 0 && str[idx - 1] == char
  end
  crunched_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# Further exploration:
# If change the loop condition to stop iterating when index == str.length,
# out last iteration will attempt to insert str[idx] (nil) into our string,
# raising a type error.

# The LS solution can't use each_char because it doesn't provide the block
# with the index to access the previous element. My solution uses String.chars
# by utilizing the each_with_index method. You could also compare against
# the new container using crunched_str.last.

# Regex Solution
def crunch_fe(str)
  str.gsub(/(.)\1+/, '\1')
end

puts
p crunch_fe('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch_fe('4444abcabccba') == '4abcabcba'
p crunch_fe('ggggggggggggggg') == 'g'
p crunch_fe('a') == 'a'
p crunch_fe('') == ''
