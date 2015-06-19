
require "./validator/validator"

class KingValidator < Validator
	
	def valid_move?(team, initial, heading)
		free_position?(team, heading) && valid_position?(initial, heading)
	end

	def valid_position?(initial, heading)
		(heading[:line] - initial[:line]).abs <= 1 &&
			(heading[:column] - initial[:column]).abs <= 1
	end
	
end
