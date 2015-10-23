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

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

ted.calculate_salary
nizar.calculate_salary
josh.calculate_salary


