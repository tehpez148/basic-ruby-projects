## project to create a game of tic-tac-toe
## player will be an object that has the ability to place a marker down. 



class Game
    def initialize ()
        @turn = 0
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

   ## def check_turn()
   ##     if @turn == 0
   ##         puts "#{@player1}'s turn!"
   ##         puts "Select"

    def play_game()
        puts "Pick your next move '#{@player1}"
        input = gets.chomp.to_i
        @board.map! {|x| x == input ? 'X': x}
        p @board
        display_board()
    end
    

end



start = Game.new
start.display_board()
start.play_game()
