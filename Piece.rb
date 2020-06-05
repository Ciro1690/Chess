class Piece

    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = pos
    end
end

class NullPiece < Piece

end

class SlidingPiece < Piece

end

class SteppingPiece < Piece

end

class Pawn < Piece

end