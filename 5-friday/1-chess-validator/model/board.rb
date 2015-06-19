
class Board

	attr_reader :matrix

	def initialize(piece_keys, matrix)
		@matrix = matrix
		@piece_keys = piece_keys
	end

	def piece_in(line, column)
		PieceMaker.new(@piece_keys).generate(@matrix[line][column])
	end

	def lines
		@matrix.size
	end

	def columns
		@matrix[0].size
	end

end
