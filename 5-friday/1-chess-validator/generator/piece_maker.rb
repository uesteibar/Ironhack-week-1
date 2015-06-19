
class PieceMaker

	def initialize(piece_shortnames)
		@piece_shortnames = piece_shortnames
	end

	def generate(symbol)
		symbol = symbol.to_s
		team = choose_team(symbol)
		return create_piece(team, symbol)
	end

	def choose_team(symbol)
		case symbol[0]
		when "w"
			return :white
		when "b"
			return :black
		end
	end

	def create_piece(team, symbol)
		if @piece_shortnames[symbol[1]]
			return piece_class(symbol).new(team, piece_validator(symbol))
		end
		nil
	end

	def piece_class(symbol)
		@piece_shortnames[symbol[1]][0]
	end

	def piece_validator(symbol)
		@piece_shortnames[symbol[1]][1]
	end
	
end
