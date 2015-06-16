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
		puts "\nHello #{@player.name}!! Let's start playing!!"
		puts "\nSome instructions:"
		puts "\t- You can move using N, S, E, W"
		puts "\t- Type 'look around' to... that's right, look around!"
		puts "\t- HAVE FUN!!\n"
		choice = ""
		while choice != "EXIT" do
			choice = turn_prompt(@current_scenario)
			next_scenario = @scenarios[@current_scenario].evaluate_input(choice, @player)
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
		if @scenarios[scenario_index].object
			puts "You can see a #{@scenarios[scenario_index].object}"
		end
		exits = @scenarios[scenario_index].exits.select{ |k, v| v != -1 }.keys.reduce("") do |sum, exit| sum += " - #{exit.to_s}" end
		puts "Exits:#{exits} -"
		print "> "
		return gets.chomp.upcase
	end

end
