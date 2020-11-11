# 11 - Spin Me Around in Circles
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end
# This method will return a DIFFERENT string than the one
# passed to it as an argument. str.split creates an array object.
# Array#join being called on this array creates a new string.

string = 'hello world'
p string.object_id
p spin_me(string).object_id
