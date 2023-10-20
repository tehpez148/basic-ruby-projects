
class Mastermind
  @@number_of_guess = 12
  
  attr_accessor :difficulty

    def initialize()
        puts "Welcome to MasterMind! Select your difficulty (Easy, Medium or Hard)"  
        @difficulty = ""
    end
    ##method to return an integer based on difficult selected
    def difficulty_select()
        while diff_input = gets.chomp.downcase
            case diff_input
            when "easy"
                @difficulty = 0
                break
            when "medium"
                @difficulty = 1
                break
            when "hard"
                @difficulty = 2
                break
            else
                puts "That's very wrong, please type Easy, Medium or Hard"
            end
        end
    end     
    ##random integer generator 
    def random_numbers
        r = rand(9)
    end
    ##random array generator, hopefully taking in difficult rating to make longer array 
    def random_array()
        rand_array = Array.new
        i = 2 + (@difficulty)
        while i != 0
            rand_array.append(random_numbers)
            i -= 1
        end
        p rand_array
    end
    ##at the moment just reports random_array
    def play_game
        random_array()
    end
 
end

##calls new object
new_game = Mastermind.new
new_game.difficulty_select




##new_game.difficulty = gets.chomp.downcase

new_game.play_game
