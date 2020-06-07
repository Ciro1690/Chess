require_relative 'Piece'
require_relative 'NullPiece'
require_relative 'Pawn'
require_relative 'SteppingPiece'
require_relative 'SlidingPiece'

class Board

    def initialize
        row,col = 8,8
        @board = Array.new (row) {Array.new(col)}
        @sentinel = NullPiece.instance
    end

    def [](pos)
        x,y = pos
        @board[x][y]
    end

    def []=(pos,value)
        x,y = pos
        @board[x][y] = value
    end

    def empty?(pos)
        self[pos].nil?
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
        @board[0].each do |piece|
            piece = Piece.new(:black)
        end
        @board[1].each do |pawn|
            pawn = Pawn.new(:black, :P)
        end
        (2..5).each do |index|
            @board[index].each do |null|
                null = NullPiece.instance
            end
        end
        @board[6].each do |pawn|
            pawn = Pawn.new(:white, :P)
        end
        @board[7].each do |piece|
            piece = Piece.new(:white)        
        end
    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
end

b = Board.new
p b.pieces