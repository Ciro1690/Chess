require_relative 'Pieces'
require 'colorize'
require_relative 'Cursor'

class Board

    attr_accessor :board; :cursor
    attr_reader :sentinel

    def initialize
        @cursor = Cursor.new([0,0], @board)
        #@sentinel = NullPiece.instance
        fill_starting_grid
        #render_board
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
        self[end_pos] = self[start_pos]
    end

    def valid_pos?(pos)
        return false if pos.nil?
        pos.all? {|coord| coord.between?(0,7)}
    end

    def add_piece(piece, pos)

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

    def fill_blank_rows(color) 
        i = 2
        while i < 6
            8.times do |j|
                @board[i][j] = NullPiece.new(color,self,[i,j])
            end 
            i+=1 
        end     
    end

    def fill_starting_grid
        @board = Array.new(8) {Array.new(8)}
        fill_back_rows(:yellow)
        fill_pawn_rows(:yellow)
        fill_blank_rows(:clear)
        fill_back_rows(:red)
        fill_pawn_rows(:red)

    end

    def render_board(cursor_pos=[0,0])
        system("clear")
        position = cursor_pos
        i,j = position

        @board.each_with_index do |rows,x|
            rows.each_with_index do |tile,y|
                if tile == @board[i][j]
                    print @board[x][y].declare_symbol.colorize(:background => :red)
                elsif (x + y)  % 2 == 0
                    print tile.declare_symbol.colorize(:background => :black)
                else
                    print tile.declare_symbol.colorize(:background => :white)
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