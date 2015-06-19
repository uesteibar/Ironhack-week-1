
class BoardParser

	def initialize(filepath)
		@filepath = filepath
	end

	def parse
		matrix = IO.readlines(@filepath).map do |line|
			parse_line(line)
		end
	end

	private

	def parse_line(line)
		line.split(" ").map do |position|
			if position.strip == "--"
				nil
			else
				position.strip.to_sym
			end
		end
	end
	
end
