
require "terminfo"

class SlideFormatter

	def format(plain_slides) 
		formated_slides = plain_slides.map { |slide| slide = center_slide(slide) }
		return formated_slides
	end

	def center_slide(slide)
		slide = center_horizontal(slide)
		slide = center_vertical(slide)
		return slide
	end

	def center_horizontal(slide)
		spaces_left = screen_width / 2  - slide.split(/\n/)[0].size / 2
		return (" " * spaces_left) + slide
	end

	def center_vertical(slide)
		lines_before = screen_height / 2
		return ("\n" * lines_before) + slide + ("\n" * lines_before)
	end

	def screen_size
		return TermInfo.screen_size
	end

	def screen_height
		return screen_size[0]
	end

	def screen_width
		return screen_size[1]
	end

end
