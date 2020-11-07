# 04 - When Will I Retire?
print 'What is your age?: '
age = gets.to_i
print 'What age would you like to retire?: '
retirement_age = gets.to_i

current_year = Time.now.year
years_until_retirement = retirement_age - age
retirement_year = current_year + years_until_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_until_retirement} years of work to go!"
