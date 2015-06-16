
require './libraries/keypress'

require 'pry'

class Blog

	POST_LIMIT = 3
	attr_reader :name
	attr_accessor :posts

	def initialize(name)
		@name = name
		@posts = []
	end

	def add(post)
		@posts << post
	end

	def publish
		pages = (@posts.size / POST_LIMIT.to_f).ceil
		next_page = 1

		sort_posts

		while next_page != 0 && next_page <= pages
			first_post_index = (next_page - 1)*POST_LIMIT
			print_page(@posts[first_post_index, POST_LIMIT])
			print_footer(next_page)
			next_page = change_page(pages, current_page)
		end

	end

	def print_page(posts)
		content = ""
		posts.each do |post|
			content << post.format
		end
		puts "\n" + content + "\n"
	end

	def print_footer(current_page)
		pages = (@posts.length / POST_LIMIT.to_f).ceil
		print "Page: "
		(1..pages).each do |page|
			if page == current_page
				print colorize(page, 31)
			else
				print "#{page} "
			end
		end

		puts "\nNavigate using ARROW-KEYS. Press ESC to exit\n"

	end

	def change_page(pages, current_page)
		pressed_key = KeyPress.read_char

		while pressed_key != "\e[C" && pressed_key != "\e[D" &&  pressed_key != "\e"
			pressed_key = KeyPress.read_char
		end
		if  pressed_key == "\e[D"
			return current_page - 1
		elsif pressed_key == "\e[C"
			return current_page + 1
		elsif pressed_key == "\e"
			return 0
		end

	end

	def sort_posts
		@posts.sort_by! {|post| post.date}.reverse!
	end

	def colorize(text, color_code)
		"\e[#{color_code}m#{text}\e[0m "
	end

end
