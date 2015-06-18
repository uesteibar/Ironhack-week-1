
require "imdb"
require "./model/movie"
require "./collection/movie_collection"

class MovieRetriever

	def initialize(logger = nil)
		@logger = logger
	end

	def search_first(search_text)
		movies = Imdb::Search.new(search_text).movies
		log("Searching for '#{search_text}'...")
		if movies[0]
			Movie.new(movies[0].title, movies[0].rating)
		else
			nil
		end
	end

	def search_multiple(input_provider)
		movies = MovieCollection.new
		input_provider.get.each do |search_text|
			movies.add_movie(search_first(search_text))
		end
		movies
	end

	def log(msg)
		if @logger
			@logger.log(msg)
		end
	end

end
