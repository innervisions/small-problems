# 05 - Diamonds

# My Solution
# def add_spaces!(str)
#   idx = 0
#   loop do
#     if str[idx] != ' '
#       str[idx] = ' '
#       str[-idx - 1] = ' '
#       break
#     end
#     idx += 1
#   end
#   str
# end

# def diamond(n)
#   row = '*' * n
#   diamond = [row.dup]
#   ((n - 1) / 2).times do
#     add_spaces!(row)
#     diamond.prepend(row.dup)
#     diamond.append(row.dup)
#   end
#   diamond.each { |el| puts el }
# end

# LS Solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(1)
puts
diamond(3)
puts
diamond(5)
puts
diamond(7)
puts
diamond(9)
puts

# Further Exploration
def print_row_fe(grid_size, distance_from_center)
  output = if distance_from_center == (grid_size - 1) / 2
             '*'
           else
             '*' + ' ' * (grid_size - (2 * distance_from_center) - 2) + '*'
           end
  puts output.center(grid_size)
end

def diamond_fe(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row_fe(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row_fe(grid_size, distance) }
end

diamond_fe(1)
puts
diamond_fe(3)
puts
diamond_fe(5)
puts
diamond_fe(7)
puts
diamond_fe(9)
