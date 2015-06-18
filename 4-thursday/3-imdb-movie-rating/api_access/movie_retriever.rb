
require "imdb"
require "./model/movie"

class MovieRetriever

	def search_first(search_text)
		movies = Imdb::Search.new(search_text).movies
		if movies[0]
			Movie.new(movies[0].title, movies[0].rating)
		else
			null
		end

	end

end
