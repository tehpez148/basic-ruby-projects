## project to create a game of tic-tac-toe
## player will be an object that has the ability to place a marker down. 



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

    def free_positions(choice)
        @board[choice].nil?
    end



    def play_game()
        ##check_win()
        take_turn()
    end
    
    def take_turn()
        if @turn == 0
            puts "Pick your next move '#{@player1}"
            while input = gets.chomp.to_i
                if free_positions(input)
                    puts "That's already been taken! Try again"
                elsif (1..9).include?(input) == false
                    puts "That's not kosher"
                else
                    @board.map! {|x| x == input ? 'X': x}
                    @turn == 1
                    display_board()
                    break
                end
            end
        else @turn == 1
            puts "Pick your next move '#{@player2}"
            while input = gets.chomp.to_i
                if free_positions(input)
                    puts "That's already been taken! Try again"
                elsif (1..9).exclude?(input)
                    puts "That's not kosher"
                else
                    @board.map! {|x| x == input ? 'O': x}
                    @turn == 0
                    display_board()
                    break
                end
            
            end
        end
    end



end



start = Game.new
start.display_board()
start.play_game()
