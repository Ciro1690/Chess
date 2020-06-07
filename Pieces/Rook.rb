require_relative 'Pieces'
require_relative 'SlidingPiece'

class Rook < Pieces
    include Slideable

    def symbol
        :R.colorize(color)
    end
end