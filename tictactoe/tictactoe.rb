## project to create a game of tic-tac-toe



class Game
    ## initializes a game objects with a turn counter, a win counter, player scores,
    ##an array of numbers 1-9
    ##winning lines
    LINES = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    def initialize ()
        @turn = 0
        @win = 0
        @board = Array.new(10)
        @board = [*1..9]
        @player_one_score = 0
        @player_two_score = 0
        puts "Welcome to Tic-Tac-Toe!"
        puts "Enter name of player 1"
        @player1 = gets.chomp
        puts "Enter name of player 2"
        @player2 = gets.chomp
    end
    ##displays array of numbers in a 3x3 board
    def display_board()
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

   
    ##method to check input is valid 
    def check_input(input)
        if (1..9).include?(input) == false
            puts "That's not kosher. Try again!"
        elsif @board[input - 1] == 'X'
            puts "That's already been taken! Try again!"
        elsif @board[input - 1] == 'O'
            puts "That's already been taken! Try again!"
        else
            return true
        end
    end



    def play_game()
        
        until @win == 1
            display_board()
            take_turn()
        end
        puts "Scores are: "
        puts"#{@player1}:#{@player_one_score}"
        puts"#{@player2}:#{@player_two_score}"
    end


    ##take turn method, cycles through players by change value of @turn variable
    ##changes element in array to X or O as appropriate 
    def take_turn()
        if @turn == 0
            puts "Pick your next move #{@player1}"
            input = ''
            loop do
                input = gets.chomp.to_i
                if check_input(input) == true
                    break
                end
            end
            @board.map! {|x| x == input ? 'X': x}
            if check_win('X')
                @win = 1
                puts "#{@player1} has won!"
                @player_one_score += 1
            end
            if check_draw()
                @win = 1
                puts "It is a drawer :("
            end
            @turn = 1
            display_board()
        else @turn == 1
            puts "Pick your next move #{@player2}"
            input = ''
            loop do
                input = gets.chomp.to_i
                if check_input(input) == true
                    break
                end
            end
            @board.map! {|x| x == input ? 'O': x}
            if check_win('O')
                @win = 1
                puts "#{@player2} has won!"
                @player_two_score += 1
            end
            if check_draw()
                @win = 1
                puts "It is a drawer :("
            end
            @turn = 0
            display_board()

        end
    end
            
    ## loops through win lines every turn to see if one play or another has a winning line
    def check_win(marker)
        LINES.any? do |line|
            line.all? {|position| @board[position - 1] == marker}
        end
    end
    ##checks whether players wish to play again, then resets certain variables to enable
    ## a new game

    def play_again?
        loop do
            puts "Play again? Y/N?"
            answer = gets.chomp.downcase
            if answer == 'n'
                exit
            elsif answer == 'y'
                @turn = 0
                @win = 0
                @board = [*1..9]
                play_game()
            end
        end
    end

    def check_draw()
        @board.none? {|space| (1..9).include?(space)}
    end





end



start = Game.new
start.play_game()
start.play_again?
