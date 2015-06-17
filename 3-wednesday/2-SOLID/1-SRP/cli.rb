
require "./model/user"
require "./login"
require "./word_counter"

class CLI

	def execute
		user1 = User.new("user1", "pword")
		user3 = User.new("user3", "pword")
		user2 = User.new("user2", "pword")

		users = [user1, user2, user3]

		if Login.new(users).login
			print "Enter a sentence: "
			puts WordCounter.new(gets.chomp).count_words
		end
	end
	
end