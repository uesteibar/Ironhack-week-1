
require "./validator/validator"

class KingValidator < Validator
	
	def valid_move?(initial, heading)
		if valid_position?(initial, heading)
			return @board.free_road?
		end
	end

	def valid_position?(initial, heading)
		((heading[:line] - initial[:line]).abs == 2 &&
			(heading[:column] - initial[:column]).abs == 1) ||
			((heading[:line] - initial[:line]).abs == 1 &&
			(heading[:column] - initial[:column]).abs == 2)
	end
	
end
