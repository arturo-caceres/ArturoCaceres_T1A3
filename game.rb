


def start_game

    puts " "
    puts " "
    puts " "
    puts " "

    puts Rainbow("          ▄▀█ █▀█ █▀▀   █▄█ █▀█ █░█   █▀ █▀▄▀█ ▄▀█ █▀█ ▀█▀ █▀▀ █▀█   ▀█▀ █░█ ▄▀█ █▄░█   ▄▀█   ").color(17, 168, 205).bright
    puts Rainbow("          █▀█ █▀▄ ██▄   ░█░ █▄█ █▄█   ▄█ █░▀░█ █▀█ █▀▄ ░█░ ██▄ █▀▄   ░█░ █▀█ █▀█ █░▀█   █▀█   ").color(17, 168, 205).bright
    puts ""
    puts Rainbow("                                  █▀ ▀█▀ █░█  █▀▀ █▀█ ▄▀█ █▀▄ █▀▀ █▀█ ▀█").color(17, 168, 205).bright
    puts Rainbow("                                  ▄█ ░█░ █▀█  █▄█ █▀▄ █▀█ █▄▀ ██▄ █▀▄ ░▄").color(17, 168, 205).bright

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
        "question" => "In the sentence 'Questlove is a very good drummer'. What part of speech is the word 'very'?",
        "options" => ["Adverb","Noun","Verb","Adjective"],
        "answer" => "Adverb"
    }, 
    {"question" => "In our solar system, which planet is farthest from the sun?",
    "options" => ["Neptune","Pluto","Saturn","Uranus"],
    "answer" => "Neptune"},
    {"question" => "In miles, approximately how far is the earth from the sun?",
    "options" => [86_000,90_000,94_000,98_000],
    "answer" => 90_000}]

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
        puts "" 
        game_points += 10
        if game_points == 30
            puts "Congratulations! You are #1"
            break
        end
    else 
        puts "Incorrect. "
        puts "Wow, at your age you should know this. It's time to grab a book my friend. "
        puts "" 
        game_points = 0 
        puts "Game over. Start again."
        puts ""
        break
    end
    puts "Current points " + game_points.to_s 
    puts ""
    }

end


