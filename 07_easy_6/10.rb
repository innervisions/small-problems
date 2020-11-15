# 10 - Right Triangles
def triangles(n)
  (1..n).each { |idx| puts ' ' * (n - idx) + '*' * idx }
end

triangles(5)
puts
triangles(9)
puts
triangles(15)
