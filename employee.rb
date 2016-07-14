class Employee

  def initialize(employee_hash)
    @first_name = employee_hash[:first_name]
    @last_name = employee_hash[:last_name]
    @salary = employee_hash[:salary]
    @active = true
  end

  attr_accessor :first_name

end

class Manager < Employee

  attr_reader :employees

  def initialize(employee_hash)
    super
    @employees = employee_hash[:employees]
  end

  def fire_employee
    puts "Fired!"
  end

end

employee = Employee.new({first_name: "Mark", last_name: "R", salary: 1})
manager = Manager.new({first_name: "Bill", last_name: "L", salary: 2, employees: ["Mark", "Danish"]})

puts manager.first_name
manager.fire_employee