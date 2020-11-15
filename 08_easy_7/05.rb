# 05 - Staggered Caps (Part 1)
def staggered_case(str, upcase_first: true)
  result = ''
  str.chars.each_with_index do |char, idx|
    if upcase_first
      result << (idx.even? ? char.upcase : char.downcase)
    else
      result << (idx.odd? ? char.upcase : char.downcase)
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('I Love Launch School!', upcase_first: false)
p staggered_case('ALL_CAPS', upcase_first: false)
p staggered_case('ignore 77 the 444 numbers', upcase_first: false)
