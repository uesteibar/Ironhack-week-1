
class MoveParser

	def initialize(filepath)
		@filepath = filepath
	end

	def parse
		IO.readlines(@filepath).map do |line|
			parse_line(line.strip)
		end
	end

	private

	def parse_line(line)
		line.split(" ").map do |position|
			[position[1].to_i - 1, convert_char_to_index(position[0])]
		end
	end

	def convert_char_to_index(letter)
		case letter.downcase
		when "a"
			return 0
		when "b"
			return 1
		when "c"
			return 2
		when "d"
			return 3
		when "e"
			return 4
		when "f"
			return 5
		when "g"
			return 6
		when "h"
			return 7
		end
	end

end
