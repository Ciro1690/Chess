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
