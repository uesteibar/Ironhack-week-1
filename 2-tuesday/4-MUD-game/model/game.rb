require 'pry'

class Game

	def initialize
		@player = player_config
		@scenarios = []
		@current_scenario = 0
	end

	def scenario(scenario)
		@scenarios.push scenario
	end

	def player_config
		puts "WELLCOME!"
		print "What's your name? "

		return Player.new(gets.chomp.capitalize)
	end

	def start
		puts "\nHello #{@player.name}!!"
		choice = ""
		while choice != "EXIT" do
			choice = turn_prompt(@current_scenario)
			next_scenario = @scenarios[@current_scenario].evaluate_input(choice)
			if next_scenario != nil
				@current_scenario = next_scenario
			end
			if next_scenario == "EXIT"
				choice = "EXIT"
			end
		end
	end

	def turn_prompt(scenario_index)
		puts "\n#{@scenarios[scenario_index].description}"
		print "> "
		return gets.chomp.upcase
	end

end
