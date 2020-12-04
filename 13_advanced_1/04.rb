# 04 - Transpose MxN
def transpose(mtx)
  rows = mtx.first.size
  cols = mtx.size
  transposed = []
  rows.times { transposed << Array.new(cols) }
  mtx.each_with_index do |row, ridx|
    row.each_with_index { |el, cidx| transposed[cidx][ridx] = el }
  end
  transposed
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
