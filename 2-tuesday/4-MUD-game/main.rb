
require './model/game'
require './model/player'
require './model/scenario'

game = Game.new

white_room = Scenario.new("You are in a white room. There's a door at the north.", {N: 1, E: 2, S: 5})
white_room.message_action("code", "you can't hack it, bro. Not yet.")
white_room.message_action("wake up", "you are not sleeping...")
white_room.look_around_message("wow, there's a computer! And lot's of doors.")
game.scenario(white_room)

dark_room = Scenario.new("You are in a dark room. There's a door at the west.", {W: 2, S: 0})
dark_room.message_action("switch lights on", "it's not gonna be that easy")
dark_room.look_around_message("It's dark bro, what the hell do you expect to see?")
dark_room.object = "lintern"
game.scenario(dark_room)

red_room = RedScenario.new({S: 0, E: 1, W: 3}, 0)
game.scenario(red_room)

blue_room = BlueScenario.new({N: 4, E: 2}, 4)
game.scenario(blue_room)

forest = Scenario.new("You are in a forest. It's really boring. Don't go west", {N: 0, S: 4, W: 5})
forest.message_action("look for wifi", "no WiFi, run fast! This must be hell...")
forest.look_around_message("there's a bunch of analogic stuff here... I don't like it. Those trees don't even have a screen.")
game.scenario(forest)

bar = BarScenario.new({N: 0, E: 4, W: 1})
game.scenario(bar)

game.start
