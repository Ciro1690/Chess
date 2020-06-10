require_relative 'Pieces'

class Board

    attr_reader :board, :sentinel

    def initialize(fill_board = true)
        @sentinel = NullPiece.instance
        fill_starting_grid(fill_board)
    end

    def [](pos)
        raise 'invalid pos' if !valid_pos?(pos)

        x,y = pos
        @board[x][y]
    end

    def []=(pos,value)
        raise 'invalid pos' if !valid_pos?(pos)

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

    def valid_pos?(pos)
        pos.all? {|coord| coord.between?(0,7)}
    end

    def add_piece(piece, pos)
        raise 'position not empty' unless pos.empty?
        self[pos] = piece
    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def fill_pawn_rows(color)

        i = color == :white ? 6 : 1
        8.times  {|j| Pawn.new(color,self,[i,j])}
    end

    def fill_back_rows(color)
        back_row = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

        i = color == :white ? 7 : 0
        back_row.each do |piece, j|
            piece.new(color,self,[i,j])
        end
    end

    def fill_starting_grid(fill_board)
        @board = Array.new(8) {Array.new(8,sentinel)}
        return unless fill_board
        %i{white black}.each do |color|
            fill_back_rows(color)
            fill_pawn_rows(color)
        end
    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
end

b = Board.new
p b