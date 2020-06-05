require_relative 'Piece'

class Board

    attr_accessor :board

    def initialize
        row,col,default_value = 8,8,Piece.new
        @board = Array.new (row) {Array.new(col,default_value)}
    end

    def [](pos)
        x,y = pos
        board[x][y]
    end

    def []=(pos,value)
        x,y = pos
        board[x][y] = value
    end

    def move_piece(start_pos, end_pos)
        x,y = start_pos
        x2,y2 = end_pos

        if board[x][y].pos.nil?
            raise "there's no piece at this starting position"
        elsif !board[x2][y2].valid_move?
            raise "the piece cannot move to this ending position"
        end
    end
end

b = Board.new
p b.move_piece([0,0],[6,6])