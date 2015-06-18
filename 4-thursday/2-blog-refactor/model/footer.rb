
class Footer

	def initialize(posts_per_page)
		@posts_per_page = posts_per_page
	end

	def print(position, total_posts)
		puts "Displaying #{position + 1} - #{position + @posts_per_page} of #{total_posts} posts"
		puts "\nPush N Key for next page"
	end

	def ask_for_next
		input = gets.chomp
		if input.downcase == "n"
			return @posts_per_page
		end
	end

end
