
require "./formatter/standard_formatter"
require "./formatter/multiline_formatter"
require "./formatter/ascii_formatter"
require "./generator/slide_generator"
require "./parser/slide_parser"
require "./model/keynote"
require "./input/standard_input"
require "./input/auto_input"
require "./input/always_next_input"

parser = SlideParser.new("----")
formatter = AsciiFormatter.new
generator = SlideGenerator.new("./keynotes/uesteibar_keynote", parser, formatter)

keynote = Keynote.new(generator, StandardInput.new)

keynote.add_input_provider("auto", AutoInput.new)
keynote.add_input_provider("always next", AlwaysNextInput.new)

keynote.start
