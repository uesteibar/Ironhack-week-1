
class Car
	def initialize(engine)
		@engine = engine
	end

	def make_sound
		@engine.noise
	end
end

class Engine
	def noise
		puts "Brooom"
	end
end

class TeslaEngine
	def noise
		puts "ssssssssss"
	end
end

Car.new(TeslaEngine.new).make_sound
