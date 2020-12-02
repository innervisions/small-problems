# 04 - Matching Parentheses
def balanced?(str)
  str = str.delete('^()')
  until str.scan(/[(][)]/).size == 0
    str.gsub!(/[(][)]/, '')
  end
  str.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
