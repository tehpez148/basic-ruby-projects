## project to create a game of tic-tac-toe




class Game
    def initialize ()
        @board = Array.new(10)
    end

    def display_board(board)
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end
end


start = Game.new

