require_relative 'Piece'
require_relative 'SlidingPiece'
require 'colorize'

class Bishop < Piece
    include Slideable

    def symbol
        ' ♝'.colorize(color)
    end

end