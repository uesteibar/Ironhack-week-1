
class Board

	attr_reader :matrix

	def initialize
		@matrix = [
			[:bR, :bN, :bB, :bQ, :bK, :bB, :bN, :bR],
			[:bP, :bP, :bP, :bP, :bP, :bP, :bP, :bP],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[:wP, :wP, :wP, :wP, :wP, :wP, :wP, :wP],
			[:wR, :wN, :wB, :wQ, :wK, :wB, :wN, :wR]
		]
	end

	def piece_in(line, column)
		@matrix[line, column]
	end

	def lines
		@matrix.size
	end

	def columns
		@matrix[0].size
	end

end
