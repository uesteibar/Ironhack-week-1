
class SlideParser

	def initialize(separator)
		@separator = separator
	end

	def parse(filepath)
		IO.read(filepath).split(@separator).map do |plain_slide|
			plain_slide.strip
		end
	end

end
