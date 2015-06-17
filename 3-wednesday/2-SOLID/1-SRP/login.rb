
class Login

	def initialize(users)
		@users = users
	end

	def login
		if user_index = get_user_index(enter_username)
			if check_password(user_index, enter_password)
				puts "Welcome!"
				return true
			else
				puts "Get the fuck out!"
			end
		else
			puts "User doesnt exist"
		end

		return nil
	end

	def enter_username
		print " Enter your Username: "
		username = gets.chomp
	end

	def get_user_index(username)
		if user_index = @users.find_index {|user| user.username == username}
			return user_index
		else
			return nil
		end
	end

	def enter_password
		print "Enter your password: "
		return gets.chomp
	end

	def check_password(user_index, password)
		password == @users[user_index].password
	end

end
