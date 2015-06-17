
require "./model/user"
require "./login"
require "./word_counter"

class CLI

	def execute
		users = create_users
		if login(users)
			count_words
		end
	end

	def create_users
		user1 = User.new("user1", "pword")
		user3 = User.new("user3", "pword")
		user2 = User.new("user2", "pword")

		return [user1, user2, user3]
	end

	def login(users)
		return Login.new(users).login
	end

	def count_words
		print "Enter a sentence: "
		puts WordCounter.new(gets.chomp).count_words
	end
	
end