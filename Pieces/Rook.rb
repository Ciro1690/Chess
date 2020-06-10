require_relative 'Piece'
require_relative 'SlidingPiece'

class Rook < Piece
    include Slideable

    def symbol
        '♖'.colorize(color)
    end
end