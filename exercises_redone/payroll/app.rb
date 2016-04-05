require_relative "lib/employee.rb"
require_relative "lib/hourly_employee.rb"
require_relative "lib/annual_employee.rb"
require_relative "lib/multi_payment_employee.rb"

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

puts josh.calculate_salary
puts nizar.calculate_salary
puts ted.calculate_salary