class Manager

  attr_reader :name
  attr_accessor :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  # INSTANCE methods
  def employees
    # must first go thru the join
    myEmployees.map do |em|
      em.employee
    end
  end

  def hire_employee(employee_instance)
    # make a new instance of the join class
    Employee_Manager.new(employee_instance, self)
  end

  # helper
  def myEmployees
    Employee_Manager.all.select do |em|
      em.manager == self
    end
  end

  # CLASS methods
  def self.all
    @@all
  end

  def self.all_departments
    Manager.all.map do |manager|
      manager.department
    end
  end

  def self.average_age
    totalAge = 0
    Manager.all.map do |manager|
      totalAge += manager.age
    end
    totalAge / Manager.all.count.to_f
  end

  def self.find_by_department(department)
  # use helper
    Employee_Manager.all.find do |em|
      em.manager.department == department
    end.employee
  end

end
