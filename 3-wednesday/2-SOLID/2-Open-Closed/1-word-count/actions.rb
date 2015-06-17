
class WordCounter

	def initialize(text)
		@text = text
	end

	def do
		puts @text.split.size
	end

	def self.description
		return "count words"
	end

end

class LetterCounter

	def initialize(text)
		@text = text
	end

	def do
		puts @text.split("").size
	end

	def self.description
		return "count letters"
	end

end

class Uppercaser

	def initialize(text)
		@text = text
	end

	def do
		puts @text.upcase
	end

	def self.description
		return "uppercase text"
	end

end

class Lowercaser

	def initialize(text)
		@text = text
	end

	def do
		puts @text.downcase
	end

	def self.description
		return "lowercase text"
	end

end

class TextReverser

	def initialize(text)
		@text = text
	end

	def do
		puts @text.reverse!
	end

	def self.description
		return "reverse text"
	end

end
