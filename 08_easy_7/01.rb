# 01 - Combine Two Lists
def interleave(arr1, arr2)
  combined_arr = []
  idx = 0
  until idx == arr1.size
    combined_arr << arr1[idx] << arr2[idx]
    idx += 1
  end
  combined_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
puts

# Further Exploration
def interleave_fe(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave_fe([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
