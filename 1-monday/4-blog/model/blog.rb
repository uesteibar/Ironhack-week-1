
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
		post_limit = 2

		sort_posts

		next_page = 1
		@posts.each_slice(post_limit) { |slice|
			print_page(slice)
			print_footer(post_limit, next_page)

			next_page += 1
		}
	end

	def print_page(posts)
		content = ""
		posts.each do |post|
			content << post.format
		end
		puts content
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

		change_page(pages, current_page)

	end

	def change_page(pages, current_page)
		pressed_key = KeyPress.read_char
		puts pressed_key

		while pressed_key != "\r"
			pressed_key = KeyPress.read_char
		end
	end

	def sort_posts
		@posts.sort_by! {|post| post.date}.reverse!
	end

	def colorize(text, color_code)
		"\e[#{color_code}m#{text}\e[0m "
	end

end
