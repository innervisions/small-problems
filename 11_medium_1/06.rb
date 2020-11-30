# 06 - Stack Machine Interpretation
def minilang(str)
  register = 0
  stack = []
  str.split.each do |cmd|
    if cmd.to_i.to_s == cmd
      register = cmd.to_i
    elsif cmd == 'PUSH'
      stack.push(register)
    elsif cmd == 'PRINT'
      puts register
    elsif stack.size > 0
      case cmd
      when 'ADD'   then register += stack.pop
      when 'SUB'   then register -= stack.pop
      when 'MULT'  then register *= stack.pop
      when 'DIV'   then register /= stack.pop
      when 'MOD'   then register %= stack.pop
      when 'POP'   then register = stack.pop
      else return puts "Error: #{cmd} is an invalid command."
      end
    else
      return puts "Error: Tried to retrieve value from an empty stack."
    end
  end
end

minilang('PRINT')
puts
# 0

minilang('5 PUSH 3 MULT PRINT')
puts
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
puts
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
puts
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
puts
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
puts
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
puts
# 12

minilang('-3 PUSH 5 SUB PRINT')
puts
# 8

minilang('6 PUSH')
puts
# (nothing printed; no PRINT commands)

# (3 + (4 * 5) - 7) / (5 % 3) = 8
minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')
puts

minilang('5 PUSH 6 MUT')
# Error: MUT is an invalid command

minilang('5 ADD')
# Error: Tried to retrieve value from an empty stack.
