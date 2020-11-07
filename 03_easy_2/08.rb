# 08 - Sum or Product of Consecutive Integers
target, operation = nil

loop do
  print 'Please enter an integer greater than 0: '
  target = gets.to_i
  break if target.positive?
end

loop do
  print "Enter 's' to compute the sum or 'p' to compute the product: "
  operation = gets.chomp
  break if %w[s p].include?(operation)
end

if operation == 's'
  result = (1..target).reduce(:+)
  puts "The sum of the integers from 1 to #{target} is #{result}."
else
  result = (1..target).reduce(:*)
  puts "The product of the integers from 1 to #{target} is #{result}."
end
