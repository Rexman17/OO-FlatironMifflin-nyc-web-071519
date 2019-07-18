require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Employee_Manager"
require 'pry'

#Test your code here

e1 = Employee.new("Rex", 245000)
e2 = Employee.new("Talula", 65000)
e3 = Employee.new("Robin", 55000)
e4 = Employee.new("Bubba", 245344)

m1 = Manager.new("Bob", "Finance", 45)
m2 = Manager.new("Ali", "Marketing", 25)
m3 = Manager.new("Ian", "Engineering", 33)

# JOIN SEEDS
em1 = Employee_Manager.new(e1, m1)
em2 = Employee_Manager.new(e1, m2)
em3 = Employee_Manager.new(e2, m1)

binding.pry
puts "done"
