require_relative 'Pieces'
require 'colorize'

class Board

    attr_reader :board, :sentinel

    def initialize
        @sentinel = NullPiece.instance
        fill_starting_grid
        render_board
    end

    def [](pos)
        # raise 'invalid pos' if !valid_pos?(pos)

        x,y = pos
        @board[x][y]
    end

    def []=(pos,value)
        # raise 'invalid pos' if !valid_pos?(pos)

        x,y = pos
        @board[x][y] = value
    end

    def empty?(pos)
        self[pos].nil?
    end

    def move_piece(color, start_pos, end_pos)
        # if self[start_pos].pos.nil?
        #     raise "there's no piece at this starting position"
        # elsif !self[end_pos].valid_move?
        #     raise "the piece cannot move to this ending position"
        # else
            self[end_pos] = self[start_pos]
        #end
    end

    def valid_pos?(pos)
        return false if pos.nil?
        pos.all? {|coord| coord.between?(0,7)}
    end

    def add_piece(piece, pos)
       # raise 'position not empty' unless pos.empty?
        #self[pos] = piece
    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def fill_pawn_rows(color)

        i = color == :yellow ? 6 : 1
        8.times do |j|
            @board[i][j] = Pawn.new(color,self,[i,j])
        end
    end

    def fill_back_rows(color)
        back_row = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

        i = color == :yellow ? 7 : 0
        back_row.each_with_index do |piece, j|
            @board[i][j] = piece.new(color,self,[i,j])   
        end
    end

    def fill_starting_grid
        @board = Array.new(8) {Array.new(8,sentinel)}
        fill_back_rows(:yellow)
        fill_pawn_rows(:yellow)
        fill_back_rows(:red)
        fill_pawn_rows(:red)
    end

    def render_board
        @board.each_with_index do |rows,x|
            rows.each_with_index do |tile,y|
                if (x + y)  % 2 == 0
                    print tile.symbol.colorize(:background => :black)
                else
                    print tile.symbol.colorize(:background => :white)
                end 
            end
            puts
        end
    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
end

b = Board.new
