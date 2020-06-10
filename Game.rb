require_relative 'Board'
require_relative 'Display'
require_relative 'Player'

class Game

    def initialize
        @board = Board.new
        @display = Display.new(@board)
        @player1 = Player.new(:red, @display)
        @player2 = Player.new(:yellow, @display)
    end
end

g = Game.new