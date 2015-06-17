
class UserLoader
	def initialize(user_storage)
		@user_storage = user_storage
	end

	def load
		@user_storage.load
	end
end
