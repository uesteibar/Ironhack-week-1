
class KingValidator

	def initialize(board)
		@board = board
	end
	
	def valid_move?(initial, heading)
		((heading[:line] - initial[:line]).abs == 2 &&
			(heading[:column] - initial[:column]).abs == 1) ||
			((heading[:line] - initial[:line]).abs == 1 &&
			(heading[:column] - initial[:column]).abs == 2)
	end
	
end
