require_relative 'Piece'
require_relative 'SteppingPiece'

class Knight < Piece
    include Steppable

    def symbol
        :Kn.colorize(color)
    end
end