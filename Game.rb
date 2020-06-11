require_relative 'Board'
require_relative 'Player'

class Game

    def initialize
        @board = Board.new
        @cursor = Cursor.new([0,0], @board)
        @player1 = Player.new(:red, @display)
        @player2 = Player.new(:yellow, @display)
        @current_player = @player1
        until game_over
            play_turn(@player1)
        end
    end

    def game_over
        false
    end

    def play_turn(player)
        @board.render_board(get_input)
        if @current_player == @player1
            @current_player = @player2
        else 
            @current_player = @player1
        end
    end

    def get_input
       @cursor.get_input
    end
end

g = Game.new