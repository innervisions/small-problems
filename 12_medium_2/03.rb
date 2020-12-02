# 03 - Lettercase Percentage Ratio
def letter_percentages(str)
  case_count = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |char|
    case char
    when /[a-z]/ then case_count[:lowercase] += 1
    when /[A-Z]/ then case_count[:uppercase] += 1
    else              case_count[:neither]   += 1
    end
  end
  case_count.map { |k, v| [k, (v.to_f / str.size * 100).round(2)] }.to_h
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')
