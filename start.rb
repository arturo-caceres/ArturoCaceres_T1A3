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
user_name = gets.chomp.capitalize
puts ""
print " Please enter your age too: "
age = gets.chomp
puts ""
puts " Thank you #{user_name}! "
puts ""
puts ""
puts Rainbow("Instructions").green.underline.bright
puts ""
puts " Every question is worth 10 points. Your goal is to reach 100 points without failing a question. "
puts " If you fail, you will start from the beginning."
puts " "
puts " Are you ready to show everyone how easy these questions are?"
puts " "
puts ""
game_points = 0
puts "Current points = " + game_points.to_s
puts " "
puts ""
game_questions = [{
    "question" => "how old are you?",
    "options" => ["op1","op2","op3","op5"],
    "answer" => "op1"
}, 
{"question" => "age?",
"options" => ["op1","op2","op3","op5"],
"answer" => "op1"},
{"question" => "Color of the sky?",
"options" => ["op1","op2","op3","op5"],
"answer" => "op3"}]

game_questions.each { |question_hash| 

puts question_hash["question"] 
puts ""
puts question_hash["options"]
puts ""

user_input = Integer(gets.chomp)
user_answer = question_hash["options"][user_input-1]
expected_answer = question_hash["answer"]
puts ""
if user_answer == expected_answer 
    puts "correct" 
    game_points += 10
    if game_points == 30
        puts "Con-drag-tulation! You are #1"
        break
    end
else 
    puts "incorrect, start again."
    game_points = 0
    puts "Game over"
    break
end
puts "Current points " + game_points.to_s 
puts ""
}






# sumando puntos
# hacer mas preguntas
# arreglo de preguntas
# como iteramos sobre el arreglo
