
class WordCounter
	def initialize(text)
		@text = text
	end

	def count_words
		return @text.split.size
	end
end
