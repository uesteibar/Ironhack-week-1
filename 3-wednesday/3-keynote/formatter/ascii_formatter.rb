
require "./formatter/multiline_formatter"
require "artii"

class AsciiFormatter < MultilineFormatter
	def format(plain_slides)
		ascii_slides = plain_slides.map { |slide| slide = Artii::Base.new.asciify(slide) }
		super(ascii_slides)
	end
end
