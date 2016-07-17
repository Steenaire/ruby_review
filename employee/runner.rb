require_relative "emailer"
require_relative "employee"
require_relative "intern"
require_relative "manager"

intern = ACLTC::Intern.new({first_name: "Bean", last_name: "R", salary: 0, active: true})
employee1 = ACLTC::Employee.new({first_name: "Brean", last_name: "K", salary: 1, active: true})
manager = ACLTC::Manager.new({first_name: "Mark", last_name: "R", salary: 1, active: true, employees: [intern,employee1]})

manager.give_all_raises
employee1.print_info
intern.print_info

intern.not_get_paid

intern.send_report