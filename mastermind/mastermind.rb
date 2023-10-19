
class Mastermind
  @@number_of_guess = 12
    ##initializes mastermind object
    def initialize()
        puts "Welcome to MasterMind! Select your difficulty (Easy, Medium or Hard)"   
    end
    ##method to return an integer based on difficult selected
    def difficulty_select(difficulty)
        if difficulty == "easy"
            return 0
        elsif difficulty == "medium" 
            return 1
        elsif difficulty == "hard" 
            return 2
        else 
            puts "That's not what I asked for! Try again..."
        end
    end     
    ##random integer generator 
    def random_numbers
        r = rand(9)
    end
    ##random array generator, hopefully taking in difficult rating to make longer array 
    def random_array()
        rand_array = Array.new
        i = 4 + difficulty_select
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
new_game.play_game()


