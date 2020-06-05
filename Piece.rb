class Piece

    attr_reader :color, :board, :pos

    def initialize
        @color = color
        @board = board
        @pos = pos
    end

    def valid_move

    end
end

class NullPiece < Piece
    def initialize
        super(color,board,pos)
    end
end

class SlidingPiece < Piece
    def initialize
        super(color,board,pos)
    end
end

class SteppingPiece < Piece
    def initialize
        super(color,board,pos)
    end
end

class Pawn < Piece
    def initialize
        super(color,board,pos)
    end
end