
require "./validator/validator"
require "./validator/module/movable_diagonal"
require "./validator/module/movable_straight"

class QueenValidator < Validator
	include MovableDiagonal, MovableStraight
	
	def valid_move?(team, initial, heading)
		free_position?(team, heading) && (valid_diagonal_move?(initial, heading) || valid_straight_move?(initial, heading))
	end
	
end
