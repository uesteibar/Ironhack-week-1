
module Actions

	def message_action(key, message)
		message_actions[key.upcase] = message
	end

	def method_action(key, method_name)
		method_actions[key.upcase, method_name.to_sym]
	end

end
