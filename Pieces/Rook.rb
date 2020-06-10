require_relative 'Piece'
require_relative 'SlidingPiece'

class Rook < Piece
    include Slideable

    def symbol
        :R.colorize(color)
    end
end