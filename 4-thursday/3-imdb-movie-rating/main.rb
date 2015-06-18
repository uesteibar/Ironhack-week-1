
require "./api_access/movie_retriever"

movie = MovieRetriever.new.search_first("matrix revolutions")

puts movie.inspect
