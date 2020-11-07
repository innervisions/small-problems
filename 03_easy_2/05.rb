# 05 - Greeting a User
print 'What is your name?: '
name = gets.chomp

if /\A*!\z/.match(name)
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
