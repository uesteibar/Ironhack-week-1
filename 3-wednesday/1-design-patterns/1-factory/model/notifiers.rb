
class TwitterNotifier

	def initialize(user)
		@user = user
	end
	def send_message
		puts "I'm notifying @#{@user.twitter} using twitter"
	end
end

class FacebookNotifier

	def initialize(user)
		@user = user
	end
	def send_message
		puts "I'm notifying #{@user.facebook} using facebook"
	end
end

class EmailNotifier

	def initialize(user)
		@user = user
	end
	def send_message
		puts "I'm notifying #{@user.email} using email"
	end
end
