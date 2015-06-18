
class FizzBuzz

	attr_writer :keywords, :condition

	def initialize(keywords, condition)
		@keywords = keywords
		@condition = condition
	end

	def run
		(1..100).each do |num|
			puts check_number(num)
		end
	end

	def add_keyword(trigger, word)
		@keywords[trigger] = word
	end

	def check_number(number)
		output = ""
		@keywords.each do |key, value|
			if @condition.call(number, key)
				output += value
			end
		end
		if output == ""
			output = number
		end

		return output
	end

end

keywords = {3 => "fizz", 5 => "buzz"}
condition = -> (number, key) { (number % key) == 0 }

fizzbuzz = FizzBuzz.new(keywords, condition)

fizzbuzz.add_keyword(7, "fluzzzz")

fizzbuzz.run
