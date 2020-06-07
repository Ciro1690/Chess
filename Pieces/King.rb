require_relative 'Pieces'
require_relative 'SteppingPiece'

class King < Pieces
    include Steppable

    def symbol
        :K.colorize(color)
    end
end