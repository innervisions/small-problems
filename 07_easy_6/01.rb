# 01 - Cute Angles
def dms(degrees_float)
  degrees_float %= 360
  degrees = degrees_float.to_i
  minutes_float = (degrees_float - degrees).round(5) * 60
  minutes = minutes_float.to_i
  seconds = (minutes_float - minutes).round(5) * 60
  format(%(#{degrees}°%02d'%02d"), minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
