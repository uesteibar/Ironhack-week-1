
class RookValidator

	def initialize(board)
		@board = board
	end
	
	def valid_move?(initial, heading)
		heading[:line] == initial[:line] || heading[:column] == initial[:column]
	end
	
end
