## project to create a game of tic-tac-toe



class Game
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

    def display_board()
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

   

    def check_input(input)
        if (1..9).include?(input) == false
            puts "That's not kosher. Try again!"
        elsif @board[input - 1] == 'X'
            puts "Input is #{input}"
            puts "The element as this position is #{@board[input]}"
            puts "That's already been taken! Try again!"
        elsif @board[input - 1] == 'O'
            puts "That's already been taken! Try again!"
        else
            return true
        end
    end



    def play_game()
        ##check_win()
        until @win == 1
            take_turn()
        end
    end
    
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
            @turn = 0
            display_board()

        end
    end
            


end



start = Game.new
start.display_board()
start.play_game()
