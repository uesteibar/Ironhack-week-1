require "pry"
module MovableDiagonal

	def valid_diagonal_move?(initial, heading)
		diagonal_move?(initial, heading) && free_diagonal?(initial, heading)
	end

	private

	def free_diagonal?(initial, heading)
		inc = increment(initial, heading)
		steps = 1.upto(inc)
		if inc < 0
			steps = 1.downto(inc)
		end
		steps.each do |i|
			if board.piece_in(initial[:line] + i.to_i, initial[:column] + i.to_i)
				return false
			end
		end
		return true
	end

	def increment(initial, heading)
		heading[:line] - initial[:line] - 1
	end

	def diagonal_move?(initial, heading)
		(heading[:line] - initial[:line]).abs == (heading[:column] - initial[:column]).abs
	end

end
