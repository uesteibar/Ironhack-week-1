
class Piece
	
	attr_reader :team

	def initialize(team, validator)
		@team = team
		@validator = validator
	end

	def can_move?(board, initial, heading)
		@validator.new(board).valid_move?(@team, initial, heading)
	end
	
end
