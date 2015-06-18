
require "./api_access/movie_retriever"
require "./input/file_input_reader"
require "./logger/cmd_logger"
require "./chart/movie_charts"

logger = CmdLogger.new
input = FileInputReader.new("./input/files/movies_to_search")
movies = MovieRetriever.new(logger).search_multiple(input)

MoviesBasicChart.new(movies).print
