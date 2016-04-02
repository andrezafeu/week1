#app.rb
require_relative "lib/payroll.rb"

employee_1 = HourlyEmployee.new("Nizar", "nizar1@ironhack.com", 35, 45) 
employee_1.calculate_salary

employee_2 = SalaryEmployee.new("Josh", "josh1@ironhack.com", 100000)
employee_2.calculate_salary

employee_3 = MultiPaymentEmployee.new("Bianca", "bianca@ironhack.com", 60000, 20, 50)
employee_3.calculate_salary

employee_4 = HourlyEmployee.new("Andreza", "andrezafeu@gmail.com", 15, 40)
employee_4.calculate_salary

employee_5 = HourlyEmployee.new("Álvaro", "alvaro.castillo23@gmail.com", 15, 40)
employee_5.calculate_salary

employees = [employee_1, employee_2, employee_3, employee_4, employee_5]
payroll_march = Payroll.new(employees)
payroll_march.pay_employees
payroll_march.notify_employees