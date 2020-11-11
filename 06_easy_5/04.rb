# 04 - Letter Swap

def swap(sentence)
  words = sentence.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Further Exploration
# This tactic would not work. a and b are references to the first
# and last objects in the array. This method swaps which objects
# a & b refer to, but not the objects that word[0] and word[-1] refer
# to. The word string is not mutated.
