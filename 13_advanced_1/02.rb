# 02 - Seeing Stars
def print_row(grid_size, distance_from_center)
  if distance_from_center == 0
    puts '*' * grid_size
  else
    output = '*' + ' ' * (distance_from_center - 1) +
             '*' + ' ' * (distance_from_center - 1) + '*'
    puts output.center(grid_size)
  end
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

star(7)
puts
star(9)
puts
star(11)
puts
star(15)

