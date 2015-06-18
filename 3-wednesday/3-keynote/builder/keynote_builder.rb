
require "./formatter/standard_formatter"
require "./formatter/multiline_formatter"
require "./formatter/ascii_formatter"
require "./generator/slide_generator"
require "./parser/slide_parser"
require "./model/keynote"
require "./input/standard_input"
require "./input/auto_input"

class KeynoteBuilder

	def initialize(filepath)
		@filepath = filepath
		@parser = SlideParser.new("----")
		@formatter = StandardFormatter.new
		@input_provider = StandardInput.new
		@input_providers = {"auto" => AutoInput.new}
	end

	def build
		keynote = Keynote.new(SlideGenerator.new(@filepath, @parser, @formatter), @input_provider)
		@input_providers.each do |trigger, provider|
			keynote.add_input_provider(trigger, provider)
		end
		keynote
	end

	def add_input_provider(trigger, input_provider)
		@input_providers[trigger] = input_provider
	end

	def add_ascii_formatter
		@formatter = AsciiFormatter.new
	end

	def add_multiline_formatter
		@formatter = MultilineFormatter.new
	end

	def add_standard_formatter
		@formatter = StandardFormatter.new
	end



end
