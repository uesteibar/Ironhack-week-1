
class Payroll

	def update(changed_employee)
		puts("Payroll: Cut a new check for #{changed_employee.name}!")
		puts("Payroll: His salary is now #{changed_employee.salary}!")
 	end

end

class HHRRDept

	def update(changed_employee)
		puts("HHRR: Why the f*** are you paying #{changed_employee.name} that much?")
 	end

end
