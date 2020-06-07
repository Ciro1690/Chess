require_relative 'Pieces'
require_relative 'SteppingPiece'

class Knight < Pieces
    include Steppable

    def symbol
        :Kn.colorize(color)
    end
end