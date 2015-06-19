
require "./model/board"
require "./model/piece"
require "./validator/rook_validator"
require "./validator/king_validator"
require "./validator/knight_validator"
require "./generator/piece_maker"
require "./input/parser/board_parser"

matrix = [
			[:bN, nil, nil, nil, nil, nil, nil, :bR],
			[:wK, :bR, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[nil, nil, nil, nil, nil, nil, nil, nil],
			[:wR, nil, nil, nil, nil, nil, nil, nil],
			[:wR, nil, nil, nil, nil, nil, nil, nil],
		]


piece_validators = {
	"R" => RookValidator,
	"K" => KingValidator,
	"N" => KnightValidator
}

# board = Board.new(piece_keys, BoardParser.new("./input/files/simple_board").parse)
board = Board.new(piece_validators, matrix)

white_knight = PieceMaker.new(piece_validators).generate(:wN)

puts white_knight.can_move?(board, {line: 0, column: 0}, {line: 1, column: 2})
puts white_knight.can_move?(board, {line: 0, column: 0}, {line: 1, column: 0})
puts white_knight.can_move?(board, {line: 0, column: 0}, {line: 2, column: 1})
