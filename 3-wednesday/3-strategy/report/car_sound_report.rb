
class CarSoundReport

	attr_reader :cars

	def initialize(cars, formatter)
		@cars = cars
		@formatter = formatter
	end

	def print
		@formatter.print(@cars)
	end

end
