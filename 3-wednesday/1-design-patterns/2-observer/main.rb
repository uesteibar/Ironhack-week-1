
require "./employee"
require "./salary_observers"

fred = Employee.new('Fred', 'Crane Operator', 30000)
fred.add_observer(Payroll.new)
fred.add_observer(HHRRDept.new)
fred.salary = 35000
