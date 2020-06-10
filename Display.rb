require_relative 'Board'
require_relative 'Cursor'
require 'colorize'

class Display

    attr_reader :board

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], @board)
        set_cursor
    end

    def set_cursor
        pos = @cursor.cursor_pos
        print @board[pos].symbol.colorize(:background => :orange)
    end
end