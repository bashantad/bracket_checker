require_relative './lib/bracket_check.rb'
bracket = BracketCheck.new
puts "Enter appropriate commands"
puts "Type EXIT to get out of the program"
input_string = ""

while input_string != "EXIT"
  input_string = STDIN.gets.strip
  puts bracket.check(input_string)
end

