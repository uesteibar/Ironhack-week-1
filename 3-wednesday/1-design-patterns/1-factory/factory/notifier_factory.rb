
require "./model/notifiers"

class NotifierFactory

	def self.from_user(user)

		if user.twitter
			return TwitterNotifier.new(user)
		elsif user.facebook
			return FacebookNotifier.new(user)
		elsif user.email
			return EmailNotifier.new(user)
		end
		
	end

end
