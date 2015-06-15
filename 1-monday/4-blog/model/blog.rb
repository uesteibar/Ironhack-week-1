
class Blog

	attr_reader :name
	attr_accessor :posts

	def initialize(name)
		@name = name
		@posts = []
	end

	def add(post)
		@posts << post
	end

	def publish_front_page
		content = ""
		sort_posts
		@posts.each do |post|
			content << post.format
		end
		puts content
	end

	def sort_posts
		@posts.sort_by! {|post| post.date}.reverse!
	end

end
