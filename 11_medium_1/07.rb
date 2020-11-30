# 07 - Word to Digit
DIGITS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
           'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
           'eight' => '8', 'nine' => '9' }

def word_to_digit(str)
  sentence = str.dup
  DIGITS.each { |k, v| sentence.gsub!(/\b#{k}\b/, v) }
  sentence
end

text = 'Please call me at five five five one two three four. Thanks.'
p word_to_digit(text) == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
