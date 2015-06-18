
require "./builder/keynote_builder"

class CLI

	def execute
		option = menu
		action(option)
	end

	def menu
		puts "Welcome to the super iKeynote!"
		puts "\nChoose which keynote you want:"
		puts "\t1 - Basic keynote"
		puts "\t2 - Multiline keynote"
		puts "\t3 - Super Awesome keynote"
		print "\n> "
		gets.chomp.to_i
	end

	def action(option)
		case option
		when 1
			basic_keynote
		when 2
			multiline_keynote
		when 3
			super_awesome_keynote
		end
	end

	def basic_keynote
		keynote_builder = KeynoteBuilder.new("./keynotes/sample_keynote")
		keynote = keynote_builder.build
		keynote.start
	end

	def multiline_keynote
		keynote_builder = KeynoteBuilder.new("./keynotes/multiline_keynote")
		keynote_builder.add_multiline_formatter
		keynote = keynote_builder.build
		keynote.start
	end

	def super_awesome_keynote
		keynote_builder = KeynoteBuilder.new("./keynotes/uesteibar_keynote")
		keynote_builder.add_ascii_formatter
		keynote = keynote_builder.build
		keynote.start
	end

end
