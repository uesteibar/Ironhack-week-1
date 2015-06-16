
require './modules/actions'
require './modules/evaluable_input'

class Scenario
	include EvaluableInput, Actions

	attr_reader :description, :message_actions, :method_actions, :input_error_message, :direction_error_message, :exits

	def initialize(description, exits)
		@description = description
		@direction_error_message = "Nothing there, dude. Sorry."
		@input_error_message = "I can't understand"
		@exits = {N: -1, S: -1, W: -1, E: -1}.merge(exits)
		@message_actions = {"LOOK AROUND" => "Nothing here." }
		@method_actions = {}

	end

	def look_around_message(msg)
		@message_actions["LOOK AROUND"] = msg
	end

end

class BarScenario < Scenario

	def initialize(description, exits)
		super(description, exits)
		@method_actions = {"PEOPLE.EACH DO KILL" => :fight}
	end

	def fight
		puts "DUDE! YOU KILLED EVERYONE!!!"
		puts "\nCongratulations, you won!!!!!!\n"

		return "EXIT"
	end
	
end


class BlueScenario < Scenario

	def initialize(description, exits, next_room)
		super(description, exits)
		@method_actions = {"PET" => :pet}
		@next_room = next_room
	end

	def pet
		puts "you got a new friend!"
		@message_actions["LOOK AROUND"] = "you got a new friend!"

		return @next_room
	end
	
end
