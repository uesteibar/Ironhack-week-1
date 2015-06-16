
class Car
	def initialize(engine)
		@engine = engine
	end

	def noise
		"piiiiiiiii"
	end

	def make_noise
		puts @engine.noise + noise
	end
end
