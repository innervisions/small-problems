# 03 - After Midnight (Part 2)

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY
def after_midnight(str)
  hours, mins = str.split(':').map(&:to_i)
  hours %= HOURS_PER_DAY
  (hours * MINUTES_PER_HOUR) + mins
end

def before_midnight(str)
  (MINUTES_PER_DAY - after_midnight(str)) % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
