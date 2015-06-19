
require "pry"

class RookValidator

	def initialize(board)
		@board = board
	end
	
	def valid_move?(team, initial, heading)
		if valid_position?(initial, heading) && free_position?(team, heading[:line], heading[:column])
			return free_road?(team, initial, heading)
		end
		false
	end

	def valid_position?(initial, heading)
		heading[:line] == initial[:line] || heading[:column] == initial[:column]
	end

	def free_position?(team, line, column)
		!@board.piece_in(line, column) || @board.piece_in(line, column).team != team
	end

	def free_road?(team, initial, heading)
		if heading[:line] == initial[:line]
			(initial[:column]+1..heading[:column]-1).each do |column|
				if @board.piece_in(initial[:line], column)
					return false
				end
			end
			return true
		else
			(initial[:line]+1..heading[:line]-1).each do |line|
				if @board.piece_in(line, initial[:column])
					return false
				end
			end
			return true
		end
	end
	
end
