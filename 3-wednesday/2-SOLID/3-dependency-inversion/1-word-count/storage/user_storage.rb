
require "./model/user"

class UserStorage
	def load
		# here is the implementation on how we get our users
		users = []
		IO.readlines("./storage/users").each do |line|
			split_line = line.chomp.split(",")
			users << User.new(split_line[0], split_line[1])
		end

		return users
	end
end
