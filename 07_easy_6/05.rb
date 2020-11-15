# 05 - Reversed Arrays (Part 2)
# def reverse(list)
#   reversed_list = []
#   idx = list.size - 1
#   while idx >= 0
#     reversed_list << list[idx]
#     idx -= 1
#   end
#   reversed_list
# end

# Further Exploration
def reverse(list)
  list.each_with_object([]) { |value, arr| arr.unshift(value) }
end

# Tests #####
p reverse([1, 2, 3, 4]) == [4, 3, 2, 1] # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
