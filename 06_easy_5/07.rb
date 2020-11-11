# 07 Letter Counter (Part 2)
# def word_sizes(str)
#   sizes = Hash.new(0)
#   str.split.each do |word|
#     word.gsub!(/[^a-z]/i, '')
#     sizes[word.size] += 1
#   end
#   sizes
# end
def word_sizes(str)
  str.split.map { |word| word.delete('^a-zA-Z').size }.tally
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
