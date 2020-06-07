require_relative 'Pieces'
require_relative 'SlidingPiece'

class Queen < Pieces
    include Slideable

    def symbol
        :Q.colorize(color)
    end
end