
class Car
	def initialize(noise)
		@noise = noise
		@cities_file = File.open('./cities.txt', 'a')
		@cities_file.truncate(0)
	end

	def make_noise
		puts get_noise
	end

	def get_noise
		return "#{@noise}"
	end

	def visit(cityname)
		@cities_file.puts cityname
		@cities_file.flush
	end

	def cities
		return IO.read(@cities_file).split(/\n/)
	end

	def self.double_noise(car)
		car.make_noise
		car.make_noise
	end
end
