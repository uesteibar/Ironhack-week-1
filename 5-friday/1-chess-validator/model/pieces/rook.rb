
class Rook

	attr_reader :team

	def initialize(team, validator)
		@team = team
		@validator = validator
	end

	def is_type?(type_to_check)
		@piece_type == type_to_check
	end

	def can_move?(board, initial, heading)
		@validator.new(board).valid_move?(@team, initial, heading)
	end
	
end
