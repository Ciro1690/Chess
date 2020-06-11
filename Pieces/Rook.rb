require_relative 'Piece'
require_relative 'SlidingPiece'
require 'colorize'

class Rook < Piece
    include Slideable

    def declare_symbol
        @symbol = ' ♜'.colorize(color)
    end
end