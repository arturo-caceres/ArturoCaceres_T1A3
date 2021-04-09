require './questions.rb'
require './player.rb'


def start_game
    
    puts `clear`



     





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
   
    p1 = Player.new(user_name,age.to_i)

    puts p1.thank_player
    
    continue_game = 1
    game_points = 0
    while game_points < 30 && continue_game == 1

        p game_points 


    puts Rainbow("Instructions").green.underline.bright
    puts ""
    puts " Every question is worth 10 points. Your goal is to reach 100 points without failing a question. "
    puts " If you fail, you will start from the beginning.
    
    "
    puts " Are you ready to show everyone how easy these questions are?"
    puts " 
    
    "
    
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
            puts p1.get_loser_message 
            game_points = 0 
            puts "Game over. Start again.
            
            "
            puts Rainbow("    Do you want to try again (1) or exit (2)?").color(255, 215, 0).bright
            continue_game = Integer(gets.chomp)
    
            if continue_game == 1
                puts `clear`
                Questions
            else continue_game == 2 
                puts Rainbow("       █▀ █░█ ▄▀█ █▀▄▀█ █▀▀   █▀█ █▄░█   █▄█ █▀█ █░█ █  ").color(255, 0, 0).bright
                puts Rainbow("       ▄█ █▀█ █▀█ █░▀░█ ██▄   █▄█ █░▀█   ░█░ █▄█ █▄█ ▄  ").color(255, 0, 0).bright
                puts "
                
                
                "
            end
            break
        end
        puts "Current points " + game_points.to_s 
        puts ""

    }

    
   
        
    end

  


end
