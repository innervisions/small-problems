# 08 - Multiply Lists
def multiply_list(arr1, arr2)
  products = []
  arr1.each_with_index do |value, idx|
    products << value * arr2[idx]
  end
  products
end

# Further Exploration
def multiply_list_fe(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list_fe([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
