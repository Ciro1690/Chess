class Piece

    attr_reader :color, :board
    attr_accessor :pos, :symbol

    def initialize(color,board,pos)
        # raise 'invalid color' unless %i(white black).include?(color)
        # raise 'invalid pos' unless board.valid_pos?(pos)

        @color,@board,@pos,@symbol = color,board,pos,""
        declare_symbol
        board.add_piece(self,pos)
    end

    def to_s
        " #{symbol} "
    end

    def empty?
        false
    end

    def valid_moves(pos)

    end


    def symbol

    end

    private
    def move_into_check?(end_pos)

    end
end




