
require "./vehicles"
require "./wheel_counter"
require "./noise_maker"

vehicles = [Car.new, Bike.new, MotorBike.new]

WheelCounter.new(vehicles).print
NoiseMaker.new(vehicles).print

