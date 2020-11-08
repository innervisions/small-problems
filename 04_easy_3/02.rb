# 02 - Arithmetic Integer
def prompt(message)
  puts "=> #{message}"
end

prompt 'Enter the first integer: '
first_number = gets.to_i
prompt 'Enter the second integer: '
second_number = gets.to_i

prompt "#{first_number} + #{second_number} = #{first_number + second_number}"
prompt "#{first_number} - #{second_number} = #{first_number - second_number}"
prompt "#{first_number} * #{second_number} = #{first_number * second_number}"
prompt "#{first_number} / #{second_number} = #{first_number / second_number}"
prompt "#{first_number} % #{second_number} = #{first_number % second_number}"
prompt "#{first_number}**#{second_number} = #{first_number**second_number}"
