
require "./formatter/standard_formatter"

class MultilineFormatter < StandardFormatter

	def center_horizontal(slide)
		left_spaces = number_of_left_spaces(slide)
		slide.split(/\n/).reduce("") do |result, line|
			result += (" " * left_spaces) + line + "\n"
		end
	end

	def number_of_left_spaces(slide)
		screen_width / 2  - slide.split(/\n/)[0].size / 2
	end
end
