
class NoiseMaker

	def self.print(vehicles)
		super_sound = vehicles.inject(""){|sum,v| sum += v.sound }
		puts super_sound
	end

end