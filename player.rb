require './game.rb'


class Player
    def initialize(name, age) 
        @name = name
        @age = age
    end

    def thank_player
        return "Thank you #{@age} year old #{@name}"
    end

    def get_loser_message
        if @age >= 7 && @age <= 17
            return "Stay in school #{@name}! Please!" 
        elsif @age >= 18 && @age <= 23
            return "Did you go to college #{@name}, it appears you skipped all clases or did the clases skipped you? Ouch!"
        elsif @age >= 24 && @age <= 29
            return "What do you call a no brainer?
                    - You, #{@name}!"    
        elsif @age >= 30 && @age <= 39
            return "You know how they say Thirty, Flirty and Thriving? In your case is more of Thirty, Foolish and Unsuccessful. Get it together #{@name}!"
        elsif @age >= 40 && @age <= 49
            return "Ouch, you know this is sad right? Maybe just google the answers #{@name}."
        else @age >= 50 && @age <=99
            return "Wow, . . . I dont know what to say. Quick, say you need your reading glasses. Just never come back #{@name}."    
        end
    end




end

