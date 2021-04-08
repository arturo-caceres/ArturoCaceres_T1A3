# require './questions.rb'

class Player
    def initialize(name, age) 
        @name = name
        @age = age
    end

    def thank_player
        return "Thank you #{@age}year old #{@name}"
    end

end

def start_game

    puts "
    
    



    "

    puts Rainbow("          ▄▀█ █▀█ █▀▀   █▄█ █▀█ █░█   █▀ █▀▄▀█ ▄▀█ █▀█ ▀█▀ █▀▀ █▀█   ▀█▀ █░█ ▄▀█ █▄░█   ▄▀█   ").color(17, 168, 205).bright
    puts Rainbow("          █▀█ █▀▄ ██▄   ░█░ █▄█ █▄█   ▄█ █░▀░█ █▀█ █▀▄ ░█░ ██▄ █▀▄   ░█░ █▀█ █▀█ █░▀█   █▀█   ").color(17, 168, 205).bright
    puts ""
    puts Rainbow("                                  █▀ ▀█▀ █░█  █▀▀ █▀█ ▄▀█ █▀▄ █▀▀ █▀█ ▀█").color(17, 168, 205).bright
    puts Rainbow("                                  ▄█ ░█░ █▀█  █▄█ █▀▄ █▀█ █▄▀ ██▄ █▀▄ ░▄").color(17, 168, 205).bright

    puts "
 
    "

    puts " Lets begin!
    "



    print " Please enter your name: "
    user_name = gets.chomp.capitalize
    puts ""
    print " Please enter your age too: "
    age = gets.chomp
   
    p1 = Player.new(user_name,age)

    puts p1.thank_player
    
    puts Rainbow("Instructions").green.underline.bright
    puts ""
    puts " Every question is worth 10 points. Your goal is to reach 100 points without failing a question. "
    puts " If you fail, you will start from the beginning.
    
    "
    puts " Are you ready to show everyone how easy these questions are?"
    puts " 
    
    "
    game_points = 0
    puts "Current points = " + game_points.to_s
    puts " 
    
    "


    Questions::GAME_QUESTIONS.each { |question_hash| 

        puts question_hash["question"] 
        puts ""
        puts question_hash["options"]
        puts "

        "
        user_input = Integer(gets.chomp)
        user_answer = question_hash["options"][user_input-1]
        expected_answer = question_hash["answer"]
        
        if user_answer == expected_answer 
            puts "correct" 
            puts "" 
            game_points += 10
            if game_points == 30
                puts game_points.to_s
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

    # while true do
    #    game_points += 10
    #    break if game_points == 30
    # end

  


end
