
class WheelCounter

	def initialize(vehicles)
		@vehicles = vehicles
	end

	def print
		wheel_number = @vehicles.reduce(0) do |sum, v|
			sum + v.wheels
		end
		puts wheel_number
	end

end
