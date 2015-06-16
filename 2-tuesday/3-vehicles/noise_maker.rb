
class NoiseMaker

	def initialize(vehicles)
		@vehicles = vehicles
	end

	def print
		super_sound = @vehicles.reduce("") do |sum,v|
			sum += v.sound
		end
		puts super_sound
	end

end