# 08 - Merge Sort
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

# def merge_sort(arr) #recursive
#   return arr if arr.size == 1
#   left = arr[0, arr.size / 2]
#   right = arr[(arr.size / 2)..-1]
#   left = merge_sort(left)
#   right = merge_sort(right)
#   merge(left, right)
# end

def merge_sort(arr) # procedural
  arr = arr.map { |el| [el] }
  while arr.size > 1
    arr = arr.each_slice(2).map do |sub1, sub2|
      sub1 ||= []
      sub2 ||= []
      merge(sub1, sub2)
    end
  end
  arr.flatten
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
  %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
  [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
