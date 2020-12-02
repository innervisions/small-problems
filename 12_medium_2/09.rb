# 09 - Bubble Sort
def bubble_sort!(arr)
  offset = 0
  loop do
    swapped = false
    (arr.size - 1 - offset).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
    offset += 1
  end
  arr
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]
puts
p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]
puts
p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
