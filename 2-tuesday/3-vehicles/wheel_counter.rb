
class WheelCounter

	def self.print(vehicles)
		wheel_number = vehicles.reduce(0) do |sum, v|
			sum + v.wheels
		end
		puts wheel_number
	end

end
