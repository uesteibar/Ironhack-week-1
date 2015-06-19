
class Validator

	attr_reader :board

	def initialize(board)
		@board = board
	end

	def free_position?(team, position)
		!@board.piece_in(position[:line], position[:column]) || @board.piece_in(position[:line], position[:column]).team != team
	end
	
end
