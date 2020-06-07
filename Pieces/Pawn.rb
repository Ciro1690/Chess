class Pawn < Piece

    def symbol
        :P.colorize(color)
    end
    
    def move_dirs
        if forward_dir == 1
            
        elsif forward_dir == -1
            
        end
    end

    private
    def at_start_row?
        if self.pos[0] == 1 && self.color == :black
            return true
        elsif self.pos[0] == 7 && self.color == :white
            return true
        else
            return false
        end
    end

    def forward_dir #returns 1 or -1
        if self.color == :black
            return 1
        else
            return -1
        end
    end

    def forward_steps

    end

    def side_attacks

    end
end