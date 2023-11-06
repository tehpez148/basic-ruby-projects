

def pick_random_line()
    word = ""
    while word.length < 5
        word = File.readlines("google-10000-english-no-swears.txt").sample
    end
    return word
end


class Hangman 

    attr_accessor :lives, :guess_array, :word, :incorrect
    def initialize()
        puts "Welcome to Hangedman!"
        @lives = 10
        @word = pick_random_line().chomp.split("")
        @guess_array = Array.new(@word.length) {"_"}
        @incorrect = []
    end

    def compare_input(letter)
        @word.each_with_index do |chara, index|
            if letter == chara
                @guess_array[index] = letter
            end
        end
    end

    def play_game()
        puts @guess_array.join(" ")
        puts "You have #{@lives} lives remaining!"
        puts "Enter your first guess: "
        while @word != @guess_array
            user_guess = gets.chomp.downcase
            if @word.to_set.include?(user_guess)
                compare_input(user_guess)
                puts @guess_array.join(" ")
                check_won()
            else
                puts "That's not in there :(. Try again"
                @incorrect << user_guess
                @lives -= 1
                check_lost()
                puts "You have #{@lives} remaining!"
                puts @incorrect.join(",")
            end
        end
    end



    def check_won()
        if @word == @guess_array
            puts "You did it!"
            exit
        end
    end

    def check_lost()
        if @lives == 0
            puts "you goofed"
            exit
        end
    end

end

game = Hangman.new
game.play_game()