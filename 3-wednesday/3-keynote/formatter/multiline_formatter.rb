
require "./formatter/standard_formatter"

class MultilineFormatter < StandardFormatter
	def center_horizontal(slide)
		slide.split(/\n/).reduce("") do |result, line|
			result += (" " * number_of_left_spaces) + line + "\n"
		end
	end

	def number_of_left_spaces
		screen_width / 2  - slide.split(/\n/)[0].size / 2
	end
end
