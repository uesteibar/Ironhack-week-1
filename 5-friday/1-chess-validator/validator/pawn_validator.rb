
class PawnValidator < Validator
	
	def valid_move?(team, initial, heading)
		free_position?(team, heading) && valid_position?(team, initial, heading)
	end

	private

	def valid_position?(team, initial, heading)
		if board.piece_in(initial[:line] + side_modifier(team, 1), initial[:column] + 1)
			return (initial[:line] + side_modifier(team, 1) == heading[:line]) &&
					(initial[:column] + 1 == heading[:columnteam, ])
		elsif board.piece_in(initial[:line] + side_modifier(team, 1), initial[:column] - 1)
			return (initial[:line] + side_modifier(team, 1) == heading[:line]) &&
					(initial[:column] - 1 == heading[:column])
		else
			return (heading[:column] == initial[:column]) &&
					(heading[:line] - initial[:line] == side_modifier(team, 1))
		end
	end


	def side_modifier(team, num)
		if team == :white
			num = (- num)
		end
		num
	end
	
end
