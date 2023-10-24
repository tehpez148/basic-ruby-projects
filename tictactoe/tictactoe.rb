## project to create a game of tic-tac-toe
## player will be an object that has the ability to place a marker down. 



class Game
    def initialize ()
        @board = Array.new(10)
        puts "Welcome to Tic-Tac-Toe!"
    end

    def display_board()
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end


end



start = Game.new
start.display_board()

