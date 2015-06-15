
class Post

	attr_accessor :title, :date, :content

	def initialize(title, date, content)
		@title = title
		@date = date
		@content = content
	end

	def format
		content = @title + "\n"
		content += "****************\n"
		content += @content + "\n"
		content += "----------------\n"
	end

end
