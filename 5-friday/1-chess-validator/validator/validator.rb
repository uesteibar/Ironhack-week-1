
class Validator

	attr_reader :board
	
	def initialize(board)
		@board = board
	end

	def free_position?(team, line, column)
		!@board.piece_in(line, column) || @board.piece_in(line, column).team != team
	end
	
end
