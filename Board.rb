require_relative 'Piece'

class Board

    def initialize
        row,col = 8,8
        @rows = Array.new (row) {Array.new(col)}
        @sentinel = NullPiece.instance
    end

    def [](pos)
        x,y = pos
        @rows[x][y]
    end

    def []=(pos,value)
        x,y = pos
        @rows[x][y] = value
    end

    def move_piece(color, start_pos, end_pos)
        if self[start_pos].pos.nil?
            raise "there's no piece at this starting position"
        elsif !self[end_pos].valid_move?
            raise "the piece cannot move to this ending position"
        else
            self[end_pos] = self[start_pos]
        end
    end

    def valid_pos(pos)

    end

    def add_piece(piece, pos)

    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces
        @rows[1].each do |pawn|
            pawn = Pawn.new(:black)
        end

        @rows[7].each do |pawn|
            pawn = Pawn.new(:white)
        end
    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
end

b = Board.new
b.pieces

