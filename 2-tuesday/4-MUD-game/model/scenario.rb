
require './modules/actions'
require './modules/evaluable_input'

class Scenario
	include EvaluableInput, Actions

	attr_reader :description, :message_actions, :method_actions, :input_error_message, :direction_error_message, :exits
	attr_accessor :object

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

	def has_object(object)
		return @object.downcase == object.downcase
	end

end

class BarScenario < Scenario

	def initialize(exits)
		super("You are in a bar. It's full of people.", exits)
		@method_actions = {"PEOPLE.EACH DO KILL END" => :fight}
		look_around_message("there's no scape, you're gonna need to fight. Do it the ruby style.")
		@object = "Katana"
	end

	def fight(player)
		if player.has_object("katana") && player.has_object("dog")
			puts "DUDE! YOU KILLED EVERYONE!!!"
			puts "\nCongratulations, you won!!!!!!\n"

			return "EXIT"
		else
			puts "you will need a weapon and some help for that, don't be crazy."
			return nil
		end
	end
	
end


class BlueScenario < Scenario

	def initialize(exits, next_room)
		super("You are in a blue room. It feels quiet. There's an aggressive a dog. Be brave.", exits)
		@method_actions["PET"] = :pet
		look_around_message("there's no scape... careful with that dog.")
		@next_room = next_room
	end

	def pet(player)
		player.pick_object("dog")
		puts "you got a new friend!"

		return @next_room
	end
	
end

class RedScenario < Scenario

	def initialize(exits, next_room)
		super("You are in a red room. It's all covered by blood.", exits)
		@method_actions["CLEAN"] = :clean
		look_around_message("WTF happened here? This place needs a clean up")
		@next_room = next_room
	end

	def clean(player)
		puts "wow! good clean up! Now it looks like the white room..."

		return @next_room
	end
	
end
