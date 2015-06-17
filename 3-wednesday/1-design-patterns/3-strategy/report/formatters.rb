
class HTMLFormatter

	def print(cars)
		puts "\n\nHTML format:\n\n"
		puts "<html>"
		puts "\t<body>"
		puts "\t\t<ul>"
		
		cars.each do |car|
			puts "\t\t\t<li>#{car.sound}</li>"
		end

		puts "\t\t</ul>"
		puts "\t</body>"
		puts "</html>"
	end

end

class PlainTextFormatter

	def print(cars)
		puts "\n\nPlain text format:\n\n"
		cars.each do |car|
			puts car.sound
		end
	end

end
