
require "./storage/user_loader"
require "./storage/user_storage"
require "./login"
require "./actions"
require "./menu"

class CLI

	def initialize
		@actions = {}
		@users = UserLoader.new(UserStorage.new).load
	end

	def execute
		if login
			key = menu
			execute_action(key)
		end
	end

	def login
		return Login.new(@users).login
	end

	def menu
		Menu.new(@actions).show
	end


	def add_action(key, action)
		@actions[key] = action
	end

	def execute_action(choice)
		if @actions[choice]
			print "write a sentence: "
			@actions[choice].new(gets.chomp).do
		end
	end
	
end