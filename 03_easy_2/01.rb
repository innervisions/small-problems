# 01 - How Old is Teddy?
puts "What's your name?"
name = gets.chomp
name = 'Teddy' if name.empty?
age = rand(20..200)
puts "#{name} is #{age} years old."
