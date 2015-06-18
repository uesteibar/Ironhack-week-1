
class MovieCollection

	attr_accessor :movies

	def initialize
		@movies = []
	end

	def sort_by_rating
		@movies.sort_by! {|movie| movie.rating}.reverse!
	end

	def add_movie(movie)
		@movies << movie
	end
end
