# 02 - After Midnight (Part 1)
SECONDS_PER_MINUTE = 60
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY
def time_of_day(after_midnight)
  after_midnight = after_midnight % MINUTES_PER_DAY
  hours, mins = after_midnight.divmod(MINUTES_PER_HOUR)
  "#{format('%02d', hours)}:#{format('%02d', mins)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
puts

# Further exploration
def time_of_day_fe(after_midnight)
  time = Time.new(2020, 11, 8) + (after_midnight * SECONDS_PER_MINUTE)
  time.strftime('%A %H:%M')
end

p time_of_day_fe(0)
p time_of_day_fe(-3)
p time_of_day_fe(35)
p time_of_day_fe(-1437)
p time_of_day_fe(3000)
p time_of_day_fe(800)
p time_of_day_fe(-4231)
