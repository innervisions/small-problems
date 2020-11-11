# 10 - Print in a Box
def print_in_box(text)
  puts '+' + '-' * (text.size + 2) + '+'
  puts '|' + ' ' * (text.size + 2) + '|'
  puts '| ' + text + ' |'
  puts '|' + ' ' * (text.size + 2) + '|'
  puts '+' + '-' * (text.size + 2) + '+'
end

print_in_box('To boldly go where no one has gone before.')
puts
print_in_box('Hello world!')
puts
print_in_box('')
