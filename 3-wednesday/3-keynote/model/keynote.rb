require "pry"
class Keynote

	def initialize(generator)
		@generator = generator
		@actions = {"next" => 1, "previous" => -1}
	end

	def start
		slides = @generator.generate
		next_slide = 0
		previous_slide = 0

		while next_slide
			begin
				slides[next_slide].show
				previous_slide = next_slide
				next_slide += ask_for_next_slide
			rescue NoMethodError
				next_slide = 0
			end
			
		end
	end

	def ask_for_next_slide
		print ">"
		input = gets.chomp.downcase

		if @actions[input]
			return @actions[input]
		else
			return 0
		end
	end

end
