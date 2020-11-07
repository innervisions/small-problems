# frozen_string_literal: true

print 'What is your name?: '
name = gets.chomp

if /\A*!\z/.match(name)
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
