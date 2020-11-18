# 02 - Madlibs
print 'Enter a noun: '
noun = gets.chomp
print 'Enter a verb: '
verb = gets.chomp
print 'Enter an adjective: '
adjective = gets.chomp
print 'Enter an adverb: '
adverb = gets.chomp

sentences = []
sentences << "I like to #{verb} my #{adjective} #{noun} #{adverb} in the morning."
sentences << "The #{adjective} #{noun} #{verb}s #{adverb} by the lake"
sentences << "The #{noun} #{adverb} #{verb}s up #{adjective} your brother."
puts sentences.sample
