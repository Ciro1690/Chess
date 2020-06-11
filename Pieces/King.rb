require_relative 'Piece'
require_relative 'SteppingPiece'
require 'colorize'

class King < Piece
    include Steppable

    def declare_symbol
        @symbol = ' ♚'.colorize(color)
    end
end