
require "./model/car"
require "./report/car_sound_report"
require "./report/formatters"

car_one = Car.new "BRUUUUUMM"
car_two = Car.new "brumbrum"
car_three = Car.new "fssssss"

cars = [car_one, car_two, car_three]

CarSoundReport.new(cars, HTMLFormatter.new).print
CarSoundReport.new(cars, PlainTextFormatter.new).print
