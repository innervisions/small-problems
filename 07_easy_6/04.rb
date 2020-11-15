# 04 - Reversed Arrays (Part 1)
def reverse!(list)
  idx1 = 0
  idx2 = list.size - 1
  until idx1 >= idx2
    list[idx1], list[idx2] = list[idx2], list[idx1]
    idx1 += 1
    idx2 -= 1
  end
  list
end

# Tests#####
list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id
puts

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]
puts

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]
puts

list = []
p reverse!(list) == []
p list == []
