
require './libraries/keypress'

require 'pry'

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
		post_limit = 3
		pages = (@posts.length / post_limit.to_f).ceil
		next_page = 1

		sort_posts

		while next_page != 0 && next_page <= pages
			first_post = (next_page - 1)*post_limit
			print_page(@posts[first_post..(first_post + post_limit - 1)])
			next_page = print_footer(post_limit, next_page)
		end

	end

	def print_page(posts)
		content = ""
		posts.take_while{ |p| 1 != nil }.each do |post|
			content << post.format
		end
		puts "\n" + content + "\n"
	end

	def print_footer(post_limit, current_page)
		pages = (@posts.length / post_limit.to_f).ceil
		print "Page: "
		(1..pages).each do |page|
			if page == current_page
				print colorize(page, 31)
			else
				print "#{page} "
			end
		end

		puts "\nNavigate using ARROW-KEYS. Press ESC to exit\n"

		change_page(pages, current_page)

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
