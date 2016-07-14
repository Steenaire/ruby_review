class BankAccount

  def initialize(starting_balance,type)
    @balance = starting_balance
    @type = type
  end
  
  attr_reader :balance, :type
  attr_accessor :pin_number

  def deposit(money)
    @balance = @balance + money
  end

  def withdraw(money)
    if (@type == "CD" && (@balance - (money+(money*0.1))) >= 0) || (@type != "CD" && (@balance - money >= 0))
      if @type == "CD"
        @balance = @balance - (money+(money*0.1))
        return money
      else
      @balance = @balance - money
      return money
      end
    else
      puts "Insufficient funds :("
      return 0
    end
  end

  def transfer_funds_to(bank_account,money)
    if self.type == "CD" || bank_account.type == "CD"
      puts "Cannot transfer funds out of or into a #{type}"
    else
      available_funds = withdraw(money)
      bank_account.deposit(available_funds)
    end
  end

end

account1 = BankAccount.new(100,"CD")
account2 = BankAccount.new(0,"Saving")
account1.transfer_funds_to(account2,30)
account1.withdraw(30)

puts "The first bank account now has a balance of #{account1.balance}"
puts "The second bank account now has a balance of #{account2.balance}"

account1.pin_number = 5
puts account1.pin_number