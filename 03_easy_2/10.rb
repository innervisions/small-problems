# 10 - Mutation
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
# Will print on each line the values of
# %w[Moe Larry CURLY Shemp Harpo CHICO Groucho Zeppo]
# The objects mutated by upcase! are shared between the two arrays.
