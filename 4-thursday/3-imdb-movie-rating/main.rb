
require "./api_access/movie_retriever"
require "./input/file_input_reader"
require "./logger/logger"
require "./chart/movie_charts"

logger = Logger.new(->(msg) {puts msg})
input = FileInputReader.new("./input/files/movies_to_search")
movies = MovieRetriever.new(logger).search_multiple(input)
movies.sort_by_rating

MoviesAsciiChart.new(movies).print
