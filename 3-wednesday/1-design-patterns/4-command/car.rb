
class Car

	attr_accessor :position

	def move(command)
		command.do
	end

	def go_back(command)
		command.undo
	end

end

class CarMover

	def initialize(direction, speed, distance)
		@direction = direction
		@speed = speed
		@distance = distance
	end

	def do
		puts "the car is moving to #{@direction} at #{@speed} km/h for #{@distance} m"
	end

	def undo
		puts "the car is moving contrary to #{@direction} at #{@speed} km/h for #{@distance} m"
	end

end
