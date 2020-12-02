# 02 - Now I Know my ABCs
BLOCKS = %w(BO XK DQ CP NA GT RE
            FS JW HU VI LY ZM)
def block_word?(word)
  word = word.upcase
  BLOCKS.none? { |block| word.count(block) > 1 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
