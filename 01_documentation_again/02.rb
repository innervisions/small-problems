# 02 - Optional Arguments Redux

require 'date'

puts Date.new               # Will print "-4712-01-01"
puts Date.new(2016)         # Will print "2016-01-01".
puts Date.new(2016, 5)      # Will print "2016-05-01".
puts Date.new(2016, 5, 13)  # Will print "2016-05-13".
