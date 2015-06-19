
require "./validator/validator"
require "./validator/module/movable_straight"

class RookValidator < Validator
	include MovableStraight
	
	def valid_move?(team, initial, heading)
		if valid_position?(initial, heading) && free_position?(team, heading[:line], heading[:column])
			return free_road?(team, initial, heading)
		end
		false
	end

	def valid_position?(initial, heading)
		heading[:line] == initial[:line] || heading[:column] == initial[:column]
	end
	
end
