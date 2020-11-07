# frozen_string_literal: true

SQM_TO_SQF = 3.28084**2
puts 'Enter the length of the room in meters.'
length = gets.to_f
puts 'Enter the width of the room in meters.'
width = gets.to_f

area_m = length * width
area_f = area_m * SQM_TO_SQF
puts <<-MSG
  The area of the room is #{area_m.round(2)} square meters.
  (#{area_f.round(2)} square feet.)
MSG
