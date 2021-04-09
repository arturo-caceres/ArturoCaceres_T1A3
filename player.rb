


class Player
    def initialize(name, age) 
        @name = name
        @age = age
    end

    def thank_player
        return "Thank you #{@age}year old #{@name}"
    end

    def get_loser_message
        if @age >= 7 && @age <= 17
            return "Stay in school kid!" 
        end
    end




end

