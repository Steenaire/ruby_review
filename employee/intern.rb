module ACLTC
  class Intern < Employee
    include Emailer

    def not_get_paid
      puts ":("
    end

  end
end