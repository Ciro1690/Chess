require_relative 'Piece'
require_relative 'SteppingPiece'

class Knight < Piece
    include Steppable

    def symbol
        '♘'.colorize(color)
    end
end