
require "./formatter/standard_formatter"

class MultilineFormatter < StandardFormatter
	def center_horizontal(slide)
		spaces_left = screen_width / 2  - slide.split(/\n/)[0].size / 2
		slide = slide.split(/\n/).reduce("") do |slide, line|
			slide += (" " * spaces_left) + line + "\n"
		end
		return slide
	end
end
