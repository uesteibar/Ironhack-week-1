
class Menu
	def initialize(actions)
		@actions = actions
	end

	def show
		puts "\n\nWhat tool would you like to use?\n"
		@actions.each do |key, action|
			puts "\t#{key} - #{action.description}"
		end
		print "\nYour choice: "
		return gets.chomp
	end
end