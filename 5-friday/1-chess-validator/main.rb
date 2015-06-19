
require "./model/board"
require "./validator/king_validator"

board = Board.new

king_validator = KingValidator.new(board)

puts king_validator.valid_move?({line: 0, column: 0}, {line: 0, column: 7})
puts king_validator.valid_move?({line: 1, column: 0}, {line: 0, column: 2})
