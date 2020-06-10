require_relative 'Piece'
require_relative 'SteppingPiece'
require 'colorize'

class Knight < Piece
    include Steppable

    def symbol
        ' ♞'.colorize(color)
    end
end