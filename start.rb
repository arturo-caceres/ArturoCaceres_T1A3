require 'rainbow'

require_relative "./about.rb"
require_relative "./game.rb"


puts " "
puts " "
puts " "
puts " "
puts Rainbow("                     Are you smarter than a 5th grader?").color(17, 168, 205).bright
puts " "
puts " "

puts " "
puts " "
puts "Welcome to the game that gives grown ups to chance to prove that you are smarter than a 5th grader. "
puts " "
puts ""
puts " Please select an option:"
puts ""
puts ""
puts "Start Game (Press 1 for this option)"
puts ""
puts "About (Press 2 for this option)"
puts ""
puts "Exit Game (Press 3 for this option)"
puts ""

option = Integer(gets.chomp)

if option == 1
    start_game
elsif option == 2
    about_game 
else option == 3
    puts "Bye"
end






# sumando puntos
# hacer mas preguntas
# arreglo de preguntas
# como iteramos sobre el arreglo
