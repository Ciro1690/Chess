require_relative 'Piece'
require_relative 'SlidingPiece'

class Bishop < Piece
    include Slideable

    def symbol
        :B.colorize(color)
    end

end