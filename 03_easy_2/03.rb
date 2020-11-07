# frozen_string_literal: true

print 'What is the bill?: '
bill = gets.to_f
print 'What is the tip percentage?: '
tip_percentage = gets.to_f
tip = tip_percentage * 0.01 * bill

puts "The tip is $#{format('%<tip>.2f', tip: tip)}"
puts "The total is $#{format('%<total>.2f', total: bill + tip)}"
