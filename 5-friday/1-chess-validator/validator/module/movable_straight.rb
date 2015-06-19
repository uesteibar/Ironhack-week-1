
module MovableStraight

	def valid_straight_move?(team, initial, heading)
		straight_move?(initial, heading) && free_road?(team, initial, heading)
	end

	private

	def free_road?(team, initial, heading)
		if heading[:line] == initial[:line]
			free_line?(initial[:line], initial[:column], heading[:column])
		else
			free_column?(initial[:column], initial[:line], heading[:line])
		end
	end

	def free_line?(line, initial_col, heading_col)
		if heading_col < initial_col
			heading_col, initial_col = initial_col, heading_col
		end
		(initial_col+1..heading_col-1).each do |column|
			if board.piece_in(line, column)
				return false
			end
		end
		return true
	end

	def free_column?(column, initial_line, heading_line)
		if heading_line < initial_line
			heading_line, initial_line = initial_line, heading_line
		end
		(initial_line+1..heading_line-1).each do |line|
			if board.piece_in(line, column)
				return false
			end
		end
		return true
	end

	def straight_move?(initial, heading)
		heading[:line] == initial[:line] || heading[:column] == initial[:column]
	end

end