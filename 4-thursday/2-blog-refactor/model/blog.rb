
class Blog

	POSTS_PER_PAGE = 3

	def initialize(footer_class)
		@all_posts = []
		@footer_class = footer_class
	end

	def add_post(post)
		@all_posts << post
	end

	def sort_posts
		@all_posts = @all_posts.sort_by! {|post, date| post.date}.reverse
	end

	def show_front_page(publisher)
		sort_posts

		position = 0
		(1..pages_number).each do |variable|
			publisher.print(@all_posts[position, POSTS_PER_PAGE])
			footer = @footer_class.new(POSTS_PER_PAGE)
			footer.print(position, @all_posts.size)
			position += footer.ask_for_next
		end
	end

	def pages_number
		return (@all_posts.size / POSTS_PER_PAGE.to_f).ceil
	end
end
