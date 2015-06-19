
class MovesChecker

	def initialize(board, moves)
		@board = board
		@moves = moves
	end
	
	def check
		@moves.each do |move|
			initial_pos = {line: move[0][0], column: move[0][1]}
			heading_pos = {line: move[1][0], column: move[1][1]}
			piece = @board.piece_in(initial_pos[:line], initial_pos[:column])
			if piece
				puts piece.can_move?(@board, initial_pos, heading_pos)
			end
		end
	end
	
end
