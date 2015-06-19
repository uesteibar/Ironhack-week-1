
require "./model/board"
require "./model/piece"
require "./validator/rook_validator"
require "./validator/king_validator"
require "./validator/knight_validator"
require "./validator/bishop_validator"
require "./validator/queen_validator"
require "./generator/piece_maker"
require "./input/parser/board_parser"

matrix = [
			[:bN, nil, nil, nil, nil, nil, nil, :bR],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[:bK, nil, nil, nil, nil, nil, nil, nil],
			[:wR, nil, nil, nil, nil, nil, nil, nil],
		]


piece_validators = {
	"R" => RookValidator,
	"K" => KingValidator,
	"N" => KnightValidator,
	"B" => BishopValidator,
	"Q" => QueenValidator
}

# board = Board.new(piece_keys, BoardParser.new("./input/files/simple_board").parse)
board = Board.new(piece_validators, matrix)

white_queen = PieceMaker.new(piece_validators).generate(:wQ)

puts white_queen.can_move?(board, {line: 0, column: 0}, {line: 1, column: 2})
puts white_queen.can_move?(board, {line: 0, column: 0}, {line: 2, column: 2})
puts white_queen.can_move?(board, {line: 1, column: 0}, {line: 7, column: 6})
puts white_queen.can_move?(board, {line: 0, column: 0}, {line: 6, column: 0})
