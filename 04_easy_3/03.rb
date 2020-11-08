# 03 - Counting the Number of Characters
print 'Please write a word or multiple words: '
input = gets.chomp
num_chars = input.split(' ').join.size
puts "There are #{num_chars} characters in \"#{input}\"."
