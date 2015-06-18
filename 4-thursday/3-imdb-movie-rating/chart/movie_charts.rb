
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

class MoviesAsciiChar
	def initialize(movie_collection)
		@movie_collection = movie_collection
	end

	def print
		
	end

end
