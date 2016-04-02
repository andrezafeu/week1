class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

module AnnualPay
  def weekly_pay
    @paycheck = @annual_salary / 52
  end
end

class HourlyEmployee < Employee
	attr_reader :paycheck
    def initialize(name, email, hourly_rate, hours_worked)
    	# Employee's intialize(name, email)
    	super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
     @paycheck = @hourly_rate * @hours_worked
    end
end

class SalaryEmployee < Employee
    include AnnualPay
	attr_reader :paycheck
	def initialize (name, email, annual_salary)
		@name = name
		@email = email
		@annual_salary = annual_salary
	end

	def calculate_salary
    weekly_pay
	end
end

class MultiPaymentEmployee < Employee
    include AnnualPay
		attr_reader :paycheck
	def initialize (name, email, annual_salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@annual_salary = annual_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		@paycheck = weekly_pay + (@hours_worked - 40) * @hourly_rate
	end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end

    def notify_employees
      @employees.each do |item|
        puts "Hey, #{item.name} (#{item.email})! We sent you your weekly paycheck. Thanks!"
      end
    end

  def pay_employees
  	@employees.each do |item|
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
  		puts "#{item.name} gets paid #{item.paycheck}"
  	end

  	total_payment = @employees.reduce(0){|sum, x| sum + x.paycheck}

  	taxes = total_payment *0.18

  	total_capital = total_payment + taxes

  	puts "Total ammount to be paid before taxes is: #{total_payment}"

  	puts "The ammount of taxes to be paid is: #{taxes}"

  	puts "The total capital needed for this week is #{total_capital}"
  end
end