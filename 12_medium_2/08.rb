# 08 - Next Featured Number Higher than a Given Value
def next_featured(num)
  num += 1
  num += 1 until num.odd? && num % 7 == 0
  until num > 9_876_543_210
    return num if num.digits == num.digits.uniq
    num += 14
  end
  'There are no featurned numbers above the given input.'
end

p next_featured(12) == 21
p next_featured(20) == 21
p next_featured(21) == 35
p next_featured(997) == 1029
p next_featured(1029) == 1043
p next_featured(999_999) == 1_023_547
p next_featured(999_999_987) == 1_023_456_987

p next_featured(9_999_999_999)
# -> There is no possible number that fulfills those requirements
