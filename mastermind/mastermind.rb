
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
        r = rand(1..9)
    end
    ##random array generator,  taking in difficult rating to make longer array 
    def random_array()
        i = 2 + (@difficulty)
        while i != 0
            @rand_array.append(random_numbers)
            i -= 1
        end
    end
    ##plays through a game of mastermind, comparing each element of array with guess. 
    def play_game
        random_array()
        p @rand_array
        puts "You have #{@rand_array.length} numbers to guess, and #{@guess} opportunities to do so."
        puts "Please select a number between 0-9"
        puts "Work through the numbers one by one, and I'll give you clues if you are close ;)"
        @rand_array.each_with_index do |num,index|
            puts "You are on number #{index + 1} with #{@guess} guesses to go"
            while user_guess = gets.chomp.to_i
                if user_guess == 0 || user_guess > 9
                    puts "That's not what I asked for"
                    @guess -= 1
                    puts "#{guess} chances left"
                    check_game_lost()
                elsif user_guess > num
                    puts "Too high! Try again"
                    @guess -= 1
                    puts "#{@guess} chances left"
                    check_game_lost()
                elsif user_guess < num 
                    puts "Too low! Try again"
                    @guess -= 1
                    puts "#{@guess} chances left"
                    check_game_lost()
                elsif user_guess == num
                    puts "You got it! Well done!"
                    break
                else
                    puts "That's not what I asked for"
                    @guess -= 1
                    puts "#{@guess} chances left"
                    check_game_lost()
                end
            end

        end
        
        puts "You did it! Hurray! Now go home"

    end

    def check_game_lost()
        if @guess == 0
            puts "You goofed"
            exit
        end
    end

    ##def play_again
 
end

##calls new object
new_game = Mastermind.new
new_game.difficulty_select
new_game.play_game


