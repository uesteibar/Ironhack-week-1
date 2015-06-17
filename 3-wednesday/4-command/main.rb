require "./car"

car = Car.new
car.move(CarMover.new("north", 40, 200))
car.move(CarMover.new("north", 20, 200))
car.go_back(CarMover.new("north", 20, 200))
