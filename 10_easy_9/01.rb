# 01 - Welcome, Stranger
def greetings(name, details)
  "Hello #{name.join(' ')}! " \
    "It's been a while since we've had a #{details[:title]} " \
    "#{details[:occupation]} 'round these parts."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
