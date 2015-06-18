
class Post
	attr_accessor :title
	attr_accessor :text
	attr_accessor :date

	def initialize(title, text, date)
		@title = title
		@text = text
		@date = date
	end

	def print
		puts @title
		puts @date
		puts "****************"
		puts @text
		puts "----------------" 
	end
end

class SponsoredPost < Post
	def print
		puts "*******" + "#{@title}" + "******"
		puts @date
		puts "****************"
		puts @text
		puts "----------------" 
	end
end
