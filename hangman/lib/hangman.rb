

class Hangman 

    attr_accessor :lives, :guess_array, :word
    def initialize()
        puts "Welcome to Hangedman!"
        @lives = 10
        @word = ["h","e","l","l","o"]
        @guess_array = Array.new(length.@word) {"_"}
    end

    def compare_input(letter)
        @word.each_with_index do |chara, index|
            if letter == chara
                @guess_array[index] = letter
            end
        end
    end

    def play_game()
        puts @guess_array
        puts "You have #{@lives} lives remaining!"
        puts "Enter your first guess: "
        while @word != @guess_array
            user_guess = gets.chomp.downcase
            if @word.to_set.include?(user_guess)
                compare_input(user_guess)
                puts @guess_array
                check_won()
            else
                puts "That's not in there :(. Try again"
                @lives -= 1
                check_lost()
                puts "You have #{@lives} remaining!"
            end
        end



    def check_won()
        if @word == @guess_array
            puts "you did it!"
            exit
        end
    end

    def check_lost()
        if @lives == 0
            puts "you goofed"
            exit
        end
    end


    game = Hangman.new
    game.play_game()