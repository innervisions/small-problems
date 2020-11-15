# 02 - Delete Vowels
def remove_vowels(strings)
  strings.map do |str|
    str.chars.reject { |char| %w(a e i o u).include?(char.downcase) }.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
