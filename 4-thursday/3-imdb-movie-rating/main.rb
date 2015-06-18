
require "./api_access/movie_retriever"
require "./input/file_input_reader"
require "./logger/cmd_logger"

logger = CmdLogger.new
input = FileInputReader.new("./input/files/movies_to_search")
movies = MovieRetriever.new(logger).search_multiple(input)

movies.each do |movie|
	puts movie.inspect
end
