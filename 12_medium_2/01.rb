# 01 - Longest Sentence
def longest_sentence(path)
  sentences = File.open(path).read.gsub(/[.?!]/, '\0|').split('|')
  largest_sentence = sentences.max_by { |sentence| sentence.split.size }
  puts largest_sentence.strip
  puts largest_sentence.split.size.to_s + ' words'
end

longest_sentence('example.txt')
puts
longest_sentence('frankenstein.txt')
