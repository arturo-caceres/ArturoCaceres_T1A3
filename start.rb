require "rainbow"
require "tty-prompt"

require_relative "./about.rb"
require_relative "./game.rb"

keep_playing = true

while keep_playing
  puts `clear`
  puts " 



"

  puts Rainbow("          ▄▀█ █▀█ █▀▀   █▄█ █▀█ █░█   █▀ █▀▄▀█ ▄▀█ █▀█ ▀█▀ █▀▀ █▀█   ▀█▀ █░█ ▄▀█ █▄░█   ▄▀█   ").color(17, 168, 205).bright
  puts Rainbow("          █▀█ █▀▄ ██▄   ░█░ █▄█ █▄█   ▄█ █░▀░█ █▀█ █▀▄ ░█░ ██▄ █▀▄   ░█░ █▀█ █▀█ █░▀█   █▀█   ").color(17, 168, 205).bright
  puts ""
  puts Rainbow("                                  █▀ ▀█▀ █░█  █▀▀ █▀█ ▄▀█ █▀▄ █▀▀ █▀█ ▀█").color(17, 168, 205).bright
  puts Rainbow("                                  ▄█ ░█░ █▀█  █▄█ █▀▄ █▀█ █▄▀ ██▄ █▀▄ ░▄").color(17, 168, 205).bright

  puts " 

_____________________________________________________________________________________________________


"
  puts "Welcome to the game that gives grown ups to chance to prove that you are smarter than a 5th grader. "
  puts " 


"
  prompt = TTY::Prompt.new
  choices = %w(Start About Exit)

  choices = [
    { name: "Start" },
    { name: "About" },
    { name: "Exit" },
  ]
  user_choice = prompt.select(" Please select an option: ", choices)

  if user_choice == "Start"
    start_game
  elsif user_choice == "About"
    more_option = about_game(prompt)
    if more_option == "Exit"
      keep_playing = false
      puts "
      Thank you. See you soon.\n\n\n"
    end
  elsif user_choice == "Exit"
    puts "
    Thank you. See you soon.\n\n\n"
    keep_playing = false
  end
end
