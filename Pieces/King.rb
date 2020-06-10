require_relative 'Piece'
require_relative 'SteppingPiece'
require 'colorize'

class King < Piece
    include Steppable

    def symbol
        ' ♚'.colorize(color)
    end
end