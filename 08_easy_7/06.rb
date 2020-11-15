# 06 - Staggered Caps (Part 2)
def staggered_case(str, count_nonalpha: false)
  result = ''
  offset = 0
  str.chars.each_with_index do |char, idx|
    offset += 1 if !count_nonalpha && char =~ /[^a-z]/i
    result << ((idx + offset).even? ? char.upcase : char.downcase)
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
