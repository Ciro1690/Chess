require_relative 'Piece'
require 'colorize'

class Pawn < Piece

    def declare_symbol
        @symbol = ' ♟︎'.colorize(color)
    end
    
    def moves
        forward_steps + side_attacks
    end

    private
    def at_start_row?
        if self.pos[0] == 1 && self.color == :red
            return true
        elsif self.pos[0] == 6 && self.color == :yellow
            return true
        else
            return false
        end
    end

    def forward_dir #returns 1 or -1
        if self.color == :yellow
            return 1
        else
            return -1
        end
    end

    def forward_steps
        i,j = pos
        one_step = [i + forward_dir, j]
        return [] unless board.valid_moves(one_step) && board.empty?(one_step)

        steps = [one_step]
        two_steps = [i + 2 * forward_dir, j]
        steps << two_steps if at_start_row? && board.empty?(two_steps)
        steps
    end

    def side_attacks
        i,j = pos

        left_attack = [i + forward_dir, j - 1]
        right_attack = [i + forward_dir, j + 1]
        side_moves = [left_attack,right_attack]

        side_moves.select do |move|
            if board.empty?(move) || !board.valid_moves(move)
                return false
            else
                attacked_piece = board[move]    
                attacked_piece && attacked_piece.color != color
            end
        end
    end
end