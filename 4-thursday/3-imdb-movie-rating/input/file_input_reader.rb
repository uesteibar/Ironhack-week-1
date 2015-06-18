
class FileInputReader

	def initialize(filepath)
		@filepath = filepath
	end

	def get
		IO.readlines(@filepath).map { |line| line.strip }
	end

end
