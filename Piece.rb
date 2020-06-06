class Piece

    attr_accessor :color, :pos, :board

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        @moves = []
    end

    def to_s

    end

    def empty?
        
    end

    def valid_moves

    end

    def pos=(val)

    end
    
    def symbol

    end

    private
    def move_into_check?(end_pos)

    end
end

class NullPiece < Piece
    include Singleton
 
    def initialize
 
    end

    def moves
    
    end

    def symbol

    end
end

class SlidingPiece < Piece

    module Slideable

        HORIZONTAL_DIRS = []
        DIAGONAL_DIRS = []

        def horizontal_dirs

        end

        def diagonal_dirs

        end

        def moves

        end

        private
        def move_dirs #overwritten by subclass

        end

        def grow_unblocked_moves_in_dir(dx,dy)

        end
    end

    def initialize
        super(color,board,pos)
    end

    def symbol

    end

    protected
    def move_diffs

    end
end

class SteppingPiece < Piece

    module Steppable
        def moves
        
        end

        private
        def move_diffs #overwritten by subclass

        end
    end

    def initialize
        super(color,board,pos)
    end

    def symbol

    end

    protected
    def move_diffs

    end
end

class Pawn < Piece

    attr_accessor :color, :board, :pos

    def initialize
        super(color,board,pos)
    end

    def symbol

    end

    def move_dirs

    end

    private
    def at_start_row?

    end

    def forward_dir #returns 1 or -1

    end

    def forward_steps

    end

    def side_attacks

    end
end