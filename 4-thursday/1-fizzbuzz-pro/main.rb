
class FizzBuzz

	def initialize
		@keywords = {}
	end

	def run
		(1..100).each do |num|
			puts check_number(num)
		end
	end

	def keywords=(keywords)
		@keywords = keywords
	end

	def add_keyword(trigger, word)
		@keywords[trigger] = word
	end

	def condition=(lambda)
		@condition = lambda
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

fizzbuzz = FizzBuzz.new
keywords = {3 => "fizz", 5 => "buzz"}
fizzbuzz.keywords = keywords

fizzbuzz.add_keyword(7, "fluzzzz")

custom_lambda = -> (number, key) { (number % key) == 0 }
fizzbuzz.condition = (custom_lambda)

fizzbuzz.run
