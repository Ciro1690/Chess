require_relative 'Piece'
require_relative 'SlidingPiece'

class Queen < Piece
    include Slideable

    def symbol
        '♕'.colorize(color)
    end
end