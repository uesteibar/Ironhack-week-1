
require "./validator/validator"
require "./validator/module/movable_diagonal"

class BishopValidator < Validator
	include MovableDiagonal
	
	def valid_move?(team, initial, heading)
		free_position?(team, heading) && valid_diagonal_move?(initial, heading)
	end
	
end
