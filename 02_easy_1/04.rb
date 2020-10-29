# 04 - How Many?

def count_occurrences(arr)
  occurrences = {}
  arr.each do |item|
    if occurrences.key? item    #change to item.upcase for case insensitive algorithm
      occurrences[item] += 1    # item.upcase
    else
      occurrences[item] = 1     # item.upcase
    end
  end

  occurrences.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)