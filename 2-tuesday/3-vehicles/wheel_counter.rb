
class WheelCounter

	def self.print(vehicles)
		wheel_number = vehicles.inject(0){|sum,v| sum += v.wheels }
		puts wheel_number
	end

end
