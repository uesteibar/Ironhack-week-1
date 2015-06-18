
class MoviesBasicChart

	def initialize(movie_collection)
		@movie_collection = movie_collection
	end

	def print
		puts "\n\n::::: Basic Chart :::::"
		@movie_collection.movies.each do |movie|
			puts "#{movie.title} --> #{movie.rating}"
		end
	end

end

class MoviesAsciiChart

	def initialize(movie_collection)
		@movie_collection = movie_collection
	end

	def print
		puts graphic
		puts legend
	end

	def graphic
		graphic_body + graphic_footer
	end

	def graphic_body
		body = ""
		(1..10).reverse_each do |printed_rating|
			@movie_collection.movies.each do |movie|
				content = " "
				if movie.rating >= printed_rating
					content = "#"
				end
				body << "|#{content}|"
			end
			body << "\n"
		end
		body
	end

	def graphic_footer
		divider = "-"
		foot = "|"
		@movie_collection.movies.each_with_index do |movie, i|
			foot << "#{i + 1}.|"
			divider << "--"
		end
		"#{divider}\n#{foot}"
	end

	def legend
		legend = "\n"
		@movie_collection.movies.each_with_index do |movie, i|
			legend << "#{i + 1}. #{movie.title}\n"
		end
		legend
	end

end
