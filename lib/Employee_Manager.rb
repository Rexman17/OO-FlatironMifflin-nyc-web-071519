# JOIN TABLE
class Employee_Manager
  
  attr_accessor :employee, :manager
  @@all = []

  def initialize(employee, manager)
    @employee = employee
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

end
