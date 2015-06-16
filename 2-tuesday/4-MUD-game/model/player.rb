
class Player
	attr_reader :name

	def initialize(name)
		@name = name
		@objects = []
	end

	def pick_object(object)
		@objects << object.downcase
		puts "you picked up #{object.downcase}!"
	end

	def drop_object(object, scenario)
		if has_object(object)
			@objects.delete(object.downcase)
			scenario.object = object.downcase
			puts "you droped #{object.downcase}"
		else
			puts "you don't have that object"
		end
	end

	def has_object(object)
		return @objects.include?(object.downcase)
	end

end
