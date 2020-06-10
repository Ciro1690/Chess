require_relative 'Piece'
require_relative 'SteppingPiece'

class King < Piece
    include Steppable

    def symbol
        :K.colorize(color)
    end
end