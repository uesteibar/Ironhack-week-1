
class Keynote

	def initialize(generator, input_provider)
		@generator = generator
		@actions = {"next" => 1, "previous" => -1}
		@input_providers = {}
		@input_provider = input_provider
	end

	def start
		slides = @generator.generate
		next_slide = 0
		previous_slide = 0

		while next_slide
			if slides[next_slide]
				next_slide = 0
			end
			slides[next_slide].show
			previous_slide = next_slide
			next_slide += ask_for_next_slide
		end
	end

	def add_input_provider(trigger, input_provider)
		@input_providers[trigger] = input_provider
	end

	def ask_for_next_slide
		input = @input_provider.input

		if @input_providers[input]
			@input_provider = @input_providers[input]
			return 0
		elsif @actions[input]
			return @actions[input]
		else
			return 0
		end
	end

end
