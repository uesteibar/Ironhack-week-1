
require "./car"

require 'pry'

sounds = ["Brooooom", "brum", "meeeeeeek"]

cars = sounds.map do |sound|
	Car.new(sound)
end

super_sound = cars.reduce(""){|sum, car|
	sum + car.get_noise
}

puts super_sound