# 05 - Reverse It
def reverse_sentence(sentence)
  words = sentence.split.reverse
  reverse = ''
  words.each { |word| reverse += word + ' '}
  reverse.chop
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
