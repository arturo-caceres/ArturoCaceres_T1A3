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
puts "Every question is worth 10 points. Your goal #{name}, is to reach 100 points without failing a question. If you miss a question, sorry to tell you this, but you have to pick up a book and study my friend! READ MORE #{name.upcase!}! You will start from the beginning once you fail a question."
puts " "
puts "Are you ready to show everyone how easy these questions are?"
puts " "
puts " "



question = {
    "question" => "how old are you?",
    "options" => ["op1","op2","op3","op5"],
    "answer" => "op1"
}

puts question["question"]
puts question["options"]

user_input = Integer(gets.chomp)
user_answer = question["options"][user_input-1]
expected_answer = question["answer"]

if user_answer == expected_answer 
    print "correct"
else 
    print "incorrect"
end

# sumando puntos
# hacer mas preguntas
# arreglo de preguntas
# como iteramos sobre el arreglo
