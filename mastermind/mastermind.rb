
class Mastermind
  
  
  attr_accessor :difficulty, :rand_array, :guess

    def initialize()
        puts "Welcome to MasterMind! Select your difficulty (Easy, Medium or Hard)"  
        @difficulty = ""
        @rand_array = []
        @guess = 12
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
    ##random array generator,  taking in difficult rating to make longer array 
    def random_array()
        i = 2 + (@difficulty)
        while i != 0
            @rand_array.append(random_numbers)
            i -= 1
        end
    end
    ##at the moment just reports random_array
    def play_game
        random_array()
        p @rand_array
        p "You have #{@rand_array.length} numbers to guess, and #{@guess} opportunities to do so."
        p "Work through the numbers one by one, and I'll give you clues if you are close ;)"
        @rand_array.each_with_index do |num,index|
            user_guess = gets.chomp


    end

    def game_over()
        if @guess == 0
            p "You goofed"
            exit
        end
    end
 
end

##calls new object
new_game = Mastermind.new
new_game.difficulty_select

new_game.play_game
