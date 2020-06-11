#require 'singleton'
require_relative 'Piece'
require 'colorize'

class NullPiece < Piece
    #include Singleton

    def declare_symbol
        @symbol = '  '.colorize(color)
    end
end
