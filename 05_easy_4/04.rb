# 04 - Leap Year (Part 2)
def leap_year?(year)
  if year > 1752
    year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# My mom's side of the family is Roman Catholic, Dad's is Greek Orthodox
# from Syria. The Greek Orthodox liturgical calendar is based on the Julian
# calendar, so the big holidays were on different days every year.
# I got to celebrate two Christmases!
