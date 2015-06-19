
require "./model/board"
require "./model/pieces/rook"
require "./validator/rook_validator"
require "./generator/piece_maker"

# @matrix = [
		# 	[:bR, :bN, :bB, :bQ, :bK, :bB, :bN, :bR],
		# 	[:bP, :bP, :bP, :bP, :bP, :bP, :bP, :bP],
		# 	[nil, nil, nil, nil, nil, nil, nil, nil],
		# 	[nil, nil, nil, nil, nil, nil, nil, nil],
		# 	[nil, nil, nil, nil, nil, nil, nil, nil],
		# 	[nil, nil, nil, nil, nil, nil, nil, nil],
		# 	[:wP, :wP, :wP, :wP, :wP, :wP, :wP, :wP],
		# 	[:wR, :wN, :wB, :wQ, :wK, :wB, :wN, :wR]
		# ]

matrix = [
			[:bR, nil, nil, nil, nil, nil, nil, :bR],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[:wR, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
		]


piece_keys = {
	"R" => [Rook, RookValidator]
}

board = Board.new(piece_keys, matrix)

black_rook = PieceMaker.new(piece_keys).generate(:bR)

puts black_rook.can_move?(board, {line: 0, column: 0}, {line: 0, column: 7})
puts black_rook.can_move?(board, {line: 0, column: 0}, {line: 6, column: 0})
