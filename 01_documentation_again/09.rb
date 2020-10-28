# 09 Down the Rabbit Hole

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

#YAML is an alias for the Psych module. Look up Psych::load_file .