
class Logger
	def initialize(lambda)
		@lambda = lambda
	end
	def log(msg)
		@lambda.call(msg)
	end
end
