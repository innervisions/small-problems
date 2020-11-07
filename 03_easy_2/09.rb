# 09 - String Assignment
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Will print out 'BOB' twice.
# name.upcase! mutates the object being referred to by name.
# This is the same object being referred to by save_name.
