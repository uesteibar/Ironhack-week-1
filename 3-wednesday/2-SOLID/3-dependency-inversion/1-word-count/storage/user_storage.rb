
require "./model/user"

class UserStorage
	def load
		# here is the implementation on how we get our users
		users = []
		IO.read("./storage/users").split(/\n/).each do |line|
			splitted_line = line.split(",")
			users << User.new(splitted_line[0], splitted_line[1])
		end

		return users
	end
end
