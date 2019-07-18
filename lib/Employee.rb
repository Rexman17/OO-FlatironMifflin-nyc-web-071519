class Employee

  attr_reader :name
  attr_accessor :salary

  @@all = []

  def initialize(name, salary)
    @name = name
    @salary = salary
    @@all << self
  end

  # INSTANCE METHODS
  def tax_bracket
    lowerEnd = self.salary - 1000
    upperEnd = self.salary + 1000
    # binding.pry
    Employee.all.select do |employee|
      if employee == self
        puts "nopeee"
      else
      # lowerEnd < employee.salary < upperEnd
        employee.salary.between?(lowerEnd,upperEnd)
      end
    end
  end


  # CLASS METHODS
  def self.all
    @@all
  end

  def self.paid_over(num)
    Employee.all.select do |emp|
      emp.salary > num
    end
  end

end
