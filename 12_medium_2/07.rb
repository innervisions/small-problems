# 07 - Unlucky Days
require 'Date'
def leap_year?(year)
  year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

def friday_13th(year)
  days_per_year = leap_year?(year) ? 366 : 365
  dates = []
  jan_first = Date.new(year)
  days_per_year.times { |n| dates << jan_first + n }
  dates.count { |date| date.friday? && date.day == 13 }
end

def five_fridays(year)
  days_per_year = leap_year?(year) ? 366 : 365
  dates = []
  jan_first = Date.new(year)
  days_per_year.times { |n| dates << jan_first + n }
  fridays = dates.select(&:friday?)
  fridays_per_month = Hash.new(0)
  fridays.each do |friday|
    fridays_per_month[Date::MONTHNAMES[friday.month]] += 1
  end
  fridays_per_month.keys.select { |k| fridays_per_month[k] > 4 }
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
p five_fridays(2015)
p five_fridays(2019)
