
require "./validator/validator"
require "./validator/module/movable_straight"

class RookValidator < Validator
	include MovableStraight
	
	def valid_move?(team, initial, heading)
		valid_straight_move?(team, initial, heading) && free_position?(team, heading)
	end
	
end
