# 01 - Madlibs Revisited
nouns = File.open('madlibs/nouns.txt').read.split
verbs = File.open('madlibs/verbs.txt').read.split
adverbs = File.open('madlibs/adverbs.txt').read.split
adjectives = File.open('madlibs/adjectives.txt').read.split
words = File.open('madlibs/text.txt').read.split

words.each do |word|
  word.gsub!('%{noun}', nouns.sample)
  word.gsub!('%{verb}', verbs.sample)
  word.gsub!('%{adverb}', adverbs.sample)
  word.gsub!('%{adjective}', adjectives.sample)
end
puts words.join(' ')
