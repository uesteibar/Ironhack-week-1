
class PieceMaker

	def initialize(piece_validators)
		@piece_validators = piece_validators
	end

	def generate(symbol)
		symbol = symbol.to_s
		team = choose_team(symbol)
		if get_validator(symbol[1])
			return Piece.new(team, get_validator(symbol[1]))
		end
		nil
	end

	private

	def choose_team(symbol)
		case symbol[0]
		when "w"
			return :white
		when "b"
			return :black
		end
	end

	def get_validator(key)
		if @piece_validators[key]
			return @piece_validators[key]
		end
		nil
	end
	
end
