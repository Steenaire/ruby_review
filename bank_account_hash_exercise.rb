class BankAccount

  attr_reader :first_name, :last_name, :email, :account_number

  def initialize(user_hash)
    @first_name = user_hash[:first_name]
    @last_name = user_hash[:last_name]
    @email = user_hash[:email]
    @account_number = create_account_number
    reject
  end

  def reject
    while (!@email.include?("@")) || (@email[-4..-1] != ".com")
      puts "Email must include an @ and end with .com! Please enter a valid email:"
      @email = gets.chomp
    end
  end

  def create_account_number
    rand(1000000000..9999999999).to_s
  end

  def print_info
    puts "FIRST NAME: #{@first_name}"
    puts "LAST NAME: #{@last_name}"
    puts "EMAIL: #{@email}"
    puts "ACCT #: #{@account_number}"
  end

end

class AccountList

  attr_reader :users

  def initialize(users)
    @users = users
  end

  def lookup(search_number)
    @users.each do |user|
      if user.account_number == search_number
        puts "#{user.first_name} #{user.last_name}"
      end
    end
  end

  def display_users
    @users.each_with_index do |user, index|
      puts "ACCOUNT: #{index+1}"
      user.print_info
    end
  end

  def add_account(account)
    @users << account
  end

end

users = []

5.times do
  puts "Enter first name:"
  first_name = gets.chomp
  puts "Enter last name:"
  last_name = gets.chomp
  puts "Enter email:"
  email = gets.chomp.downcase
  users << BankAccount.new(
    {first_name: first_name,
      last_name: last_name,
      email: email,
      })
end

bank = AccountList.new(users)
bank.display_users
bank.lookup(users[0].account_number)