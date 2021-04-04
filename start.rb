require 'rainbow'


puts " "
puts " "
puts " "
puts " "
puts " "
puts Rainbow("                     Are you smarter than a 5th grader?").color(17, 168, 205).bright
puts " "
puts " "
puts " "
puts " "
puts " "
puts " Lets begin!"
puts ""
print " Please enter your name: "
name = gets.chomp.capitalize
puts ""
print " Thank you #{name}. If you could please enter your age too: "
age = gets.chomp
puts ""
puts " Thank you again #{name}! "
puts ""
puts ""
puts Rainbow("Instructions").green.underline
puts ""
puts "Every question is worth 10 points. Your goal #{name}, is to reach 100 points without failing a question. If you miss a question, sorry to tell you this, but you have to pick a book and study my friend! You will start from the beginning once you fail a question."
puts " "
puts "Are you ready to show everyone how easy these questions are?"
puts " "
