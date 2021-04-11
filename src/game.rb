require_relative "./questions.rb"
require_relative "./player.rb"
require_relative "./title.rb"

def start_game(prompt)
  print_title

  puts " Lets begin!
    "

  print " Please enter your name: "
  user_name = gets.chomp.capitalize
  puts ""

  age = 0

  while age < 7 || age > 99
    print " Please enter your age, #{user_name}: "

    age = gets.chomp.to_i

    if age < 7 || age > 99
      puts Rainbow("
        Please enter an age between 7 and 99
        ").color(220, 20, 60)
    end
  end

  p1 = Player.new(user_name, age)

  puts ""
  puts p1.thank_player
  puts "
  "

  continue_game = "Try again!"
  game_points = 0
  while game_points < 100 && continue_game == "Try again!"
    puts Rainbow("Instructions").green.underline.bright
    puts ""
    puts " Every question is worth 10 points. Your goal is to reach 100 points without failing a question. "
    puts " If you fail, you will start from the beginning.
    
    "
    puts " Are you ready to show everyone how easy these questions are?"
    puts " 
    "

    puts " Current points = " + game_points.to_s
    puts " 
    "

    Questions::GAME_QUESTIONS.each { |question_hash|
      user_answer = prompt.select(question_hash["question"], question_hash["options"])

      puts "
        "
      expected_answer = question_hash["answer"]

      if user_answer == expected_answer
        puts "Correct Answer"
        puts ""
        game_points += 10
        if game_points == 100
          puts game_points.to_s
          puts "Congratulations #{user_name}! You are #1"
          puts ""
          puts "Truly a genius! Thank you for proving you are smarter then a 5th grader. Now, are you smarter than a 6th grader? Lets find out soon! "
          puts ""
          break
        end
      else
        puts Rainbow("Incorrect Answer").color(255, 40, 0).bright
        puts ""
        puts p1.get_loser_message
        game_points = 0
        puts ""
        puts "Game over.
            "

        continue_game = prompt.select("What would you like to do next?", [{ name: "Try again!" }, { name: "Exit Game" }])

        if continue_game == "Try again!"
          puts `clear`
        else continue_game == "Exit Game"
          puts "
          "
          puts Rainbow("       █▀ █░█ ▄▀█ █▀▄▀█ █▀▀   █▀█ █▄░█   █▄█ █▀█ █░█ █  ").color(255, 0, 0).bright
          puts Rainbow("       ▄█ █▀█ █▀█ █░▀░█ ██▄   █▄█ █░▀█   ░█░ █▄█ █▄█ ▄  ").color(255, 0, 0).bright
          puts "
                
              "         end
        break
      end
      puts "Current points " + game_points.to_s
      puts ""
    }
  end
end
