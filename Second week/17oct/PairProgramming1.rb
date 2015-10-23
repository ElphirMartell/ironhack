class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end

    def calculate_salary
        #What will this return? 
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
      super(name, email) #Navigator, look into what super does. 
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
  end

  def calculate_salary
      @hourly_rate * @hours_worked #returns the hours worked * hourly_rate
  end
end

class SalariedEmployee < Employee
    def initialize(name, email, anual_salary)
      super(name, email) #Navigator, look into what super does. 
      @anual_salary = anual_salary
    end

    def calculate_salary
      @anual_salary / 52 
    end

end

class MultiPaymentEmployee < Employee
    def initialize(name, email, anual_salary, hourly_rate, hours_worked)
      super(name, email) #Navigator, look into what super does. 
    @anual_salary = anual_salary
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
  end

  def calculate_salary
      @anual_salary / 52 + @hourly_rate * @hours_worked #returns the hours worked * hourly_rate
  end
end

class Payroll
    def initialize(employees)
      @employees = employees
  end

  def notify_employee(employee)
        puts "payday #{employee.email}" 
  end

  def pay_employees
      @employees.each do |item|# Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
      	puts item.calculate_salary
      	notify_employee(item)

      end
      puts @employees.reduce(0){|sum, n| sum + n.calculate_salary} * 0.82 
  end
end






josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
sergio = HourlyEmployee.new('Sergio', 'sergioroa2@gmail.com', 15, 50)
enrique = HourlyEmployee.new('Enrique', 'asfsdfsd@fdse.com', 15, 50)

employees = [josh, nizar, ted, sergio, enrique]
payroll = Payroll.new(employees)
payroll.pay_employees

ted.calculate_salary
nizar.calculate_salary
josh.calculate_salary


payroll.notify_employee(enrique)