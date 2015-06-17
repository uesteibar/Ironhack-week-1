
class Employee

	attr_reader :name, :title
	attr_reader :salary

	def initialize( name, title, salary) 
   		@name = name
   		@title = title
   		@salary = salary
   		@observers = []
	end

	def add_observer(observer)
		@observers << observer
	end

	def salary=(new_salary) 
    	@salary = new_salary 
    	@observers.each do |observer|
    		observer.update(self)
   		end
    end

end
