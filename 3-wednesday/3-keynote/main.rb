
require "./formatter/slide_formatter"
require "./generator/slide_generator"
require "./parser/slide_parser"
require "./model/keynote"

parser = SlideParser.new("----")
formatter = SlideFormatter.new
generator = SlideGenerator.new("./keynotes/sample_keynote", parser, formatter)
keynote = Keynote.new(generator)

keynote.start
