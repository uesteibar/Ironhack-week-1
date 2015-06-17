
require "./model/slide"

class SlideGenerator

	def initialize(filepath, parser, formatter)
		@filepath = filepath
		@parser = parser
		@formatter = formatter
	end

	def generate
		slides = []
		plain_slides = @parser.parse(@filepath)
		formated_content_slides = @formatter.format(plain_slides)
		formated_content_slides.each do |formated_slide|
			slides << Slide.new(formated_slide)
		end
		return slides
	end

end
