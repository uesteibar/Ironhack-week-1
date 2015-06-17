
class Keynote

	def initialize(generator)
		@generator = generator
	end

	def start
		@generator.generate.each do |slide|
			slide.show
			wait_for_next
		end
	end

	def wait_for_next
		gets.chomp
	end

end
