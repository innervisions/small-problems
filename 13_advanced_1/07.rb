# 07 - Merge Sorted Lists
def merge(arr1, arr2)
  merged = []
  idx1 = 0
  idx2 = 0
  while idx1 < arr1.size || idx2 < arr2.size
    if arr1[idx1] && (!arr2[idx2] || (arr1[idx1] < arr2[idx2]))
      merged << arr1[idx1]
      idx1 += 1
    else
      merged << arr2[idx2]
      idx2 += 1
    end
  end
  merged
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
