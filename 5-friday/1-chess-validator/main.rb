
require "./model/board"
require "./model/piece"
require "./validator/rook_validator"
require "./validator/king_validator"
require "./validator/knight_validator"
require "./validator/bishop_validator"
require "./validator/queen_validator"
require "./validator/pawn_validator"
require "./generator/piece_maker"
require "./input/parser/board_parser"
require "./input/parser/move_parser"
require "./moves_checker"

piece_validators = {
	"R" => RookValidator,
	"K" => KingValidator,
	"N" => KnightValidator,
	"B" => BishopValidator,
	"Q" => QueenValidator,
	"P" => PawnValidator
}

board = Board.new(piece_validators, BoardParser.new("./input/files/simple_board").parse)
moves = MoveParser.new("./input/files/simple_moves").parse

MovesChecker.new(board, moves).check
