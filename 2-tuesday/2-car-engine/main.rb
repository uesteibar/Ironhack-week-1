
require "./car"
require "./engine"

Car.new(Engine.new).make_noise
Car.new(NoisyEngine.new).make_noise
