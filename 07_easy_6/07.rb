# 07 - Halvsies
def halvsies(arr)
  middle_idx = arr.size / 2
  middle_idx += 1 if arr.size.odd?
  [arr[0...middle_idx], arr[middle_idx..(arr.size - 1)]]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
