# 05 - Multiple Signatures

a = %w(a b c d e)
puts a.fetch(7)                         # Throws IndexError
puts a.fetch(7, 'beats me')             # "beats me"
puts a.fetch(7) { |index| index**2 }    # "49"
