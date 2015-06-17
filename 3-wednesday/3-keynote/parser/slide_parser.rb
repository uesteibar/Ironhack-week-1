
class SlideParser

	def initialize(separator)
		@separator = separator
	end

	def parse(filepath)
		plain_slides = []
		IO.read(filepath).split(@separator).each do |plain_slide|
			plain_slides << plain_slide.strip
		end

		return plain_slides
	end

end
