# 05 - Clean Up The Words
def cleanup(str)
  new_str = ''
  str.each_char do |char|
    if /[a-z]/.match(char)
      new_str << char
    elsif new_str[-1] != ' '
      new_str << ' '
    end
  end
  new_str
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("    what's goin!g *7l on!! !") == " what s goin g l on "
