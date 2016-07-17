module ACLTC
  class Employee
    attr_reader :first_name, :last_name
    attr_accessor :active

    def initialize(input_options)
      @first_name = input_options[:first_name]
      @last_name = input_options[:last_name]
      @salary = input_options[:salary]
      @active = input_options[:active]
    end

    def print_info
      if self.active
        puts "#{@first_name} #{@last_name} makes #{@salary} a year."
      end
    end

    def give_annual_raise
      @salary = 1.05 * @salary
    end
  end
end