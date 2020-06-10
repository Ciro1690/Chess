require_relative 'Piece'
require_relative 'SlidingPiece'

class Bishop < Piece
    include Slideable

    def symbol
        '♗'.colorize(color)
    end

end