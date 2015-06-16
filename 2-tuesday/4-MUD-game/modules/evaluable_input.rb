
module EvaluableInput

	def evaluate_input(input)
		if exits[input.to_sym] != nil && exits[input.to_sym] >= 0
			puts "You are moving..."
			return exits[input.to_sym]
		elsif exits[input.to_sym] == -1
			puts direction_error_message
			return nil
		elsif method_actions[input]
			return send(method_actions[input])
		elsif message_actions[input]
			puts message_actions[input]
			return nil
		elsif input == "EXIT"
			puts "\nGOODBYE BRO!"
		else
			puts input_error_message
			return nil
		end
	end
end
