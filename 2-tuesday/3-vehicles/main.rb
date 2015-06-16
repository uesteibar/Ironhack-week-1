
require "./vehicles"
require "./wheel_counter"
require "./noise_maker"

vehicles = [Car.new, Bike.new, MotorBike.new]

WheelCounter.print(vehicles)
NoiseMaker.print(vehicles)

