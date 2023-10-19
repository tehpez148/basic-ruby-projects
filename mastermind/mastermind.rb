
class Mastermind
  @@number_of_guess = 12

    def initialize()
        puts "Welcome to MasterMind! Select your difficulty (Easy, Medium or Hard)"
        difficulty = gets.chomp.downcase    
    end
    
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
    
    def random_numbers
        r = rand(9)
    end

    def random_array()
        rand_array = Array.new
        i = 4 + difficulty_select
        while i != 0
            rand_array.append(random_numbers)
            i -= 1
        end
        p rand_array
    end

    def play_game
        random_array()
    end

    
end


new_game = Mastermind.new
new_game.play_game()


