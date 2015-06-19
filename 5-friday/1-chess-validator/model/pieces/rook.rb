
class Rook

	def initialize(validator)
		@piece_type = piece_type
		@validator = validator
	end

	def is_type?(type_to_check)
		@piece_type == type_to_check
	end
	
end
