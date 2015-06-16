
class NoiseMaker

	def self.print(vehicles)
		super_sound = vehicles.reduce("") do |sum,v|
			sum += v.sound
		end
		puts super_sound
	end

end