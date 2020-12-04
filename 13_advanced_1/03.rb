# 03 - Transpose 3x3
def transpose(mtx)
  transposed = []
  mtx.size.times { transposed << Array.new(mtx.size) }
  mtx.each_with_index do |row, ridx|
    row.each_with_index { |el, cidx| transposed[cidx][ridx] = el }
  end
  transposed
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
puts
# Further Exploration
def transpose!(mtx)
  mtx.size.times do |row|
    row.upto(mtx.size - 1) do |col|
      mtx[row][col], mtx[col][row] = mtx[col][row], mtx[row][col]
    end
  end
  mtx
end

new_matrix = transpose!(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
