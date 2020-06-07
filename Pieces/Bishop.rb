require_relative 'Pieces'
require_relative 'SlidingPiece'

class Bishop < Pieces
    include Slideable

    def symbol
        :B.colorize(color)
    end

end