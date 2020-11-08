# 01 Searching 101
numbers = []
print 'Enter the 1st number: '
numbers.push gets.to_i
print 'Enter the 2nd number: '
numbers.push gets.to_i
print 'Enter the 3rd number: '
numbers.push gets.to_i
print 'Enter the 4th number: '
numbers.push gets.to_i
print 'Enter the 5th number: '
numbers.push gets.to_i

print 'Enter the last number: '
target = gets.to_i

if numbers.include? target
  puts "The number #{target} appears in #{numbers}."
else
  puts "The number #{target} does not appear in #{numbers}."
end
