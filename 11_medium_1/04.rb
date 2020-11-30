# 04 - 1000 Lights
def lights_on(n)
  lights = {}
  (1..n).each { |idx| lights[idx] = false }
  (1..n).each do |idx|
    lights.each { |k, v| lights[k] = !v if k % idx == 0 }
  end
  lights.select { |_, v| v }.keys
end

p lights_on(5) # == [1, 4]
p lights_on(10) # == [1, 4, 9]
p lights_on(1000)
