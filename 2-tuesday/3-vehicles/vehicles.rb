
class Car
	attr_accessor :wheels

	def initialize
		@wheels = 4
	end

	def sound
		return "BRUMMMMM"
	end

end

class Bike
	attr_accessor :wheels

	def initialize
		@wheels = 2
	end

	def sound
		return "ding ding ding"
	end

end

class MotorBike
	attr_accessor :wheels

	def initialize
		@wheels = 2
	end

	def sound
		return "brummmmmmmmmm bruuuuuuuum brum brum brum"
	end

end
