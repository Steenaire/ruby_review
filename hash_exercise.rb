class BankAccount

  attr_reader :first_name, :last_name, :email, :account_number

  def initialize(user_hash)
    @first_name = user_hash[:first_name]
    @last_name = user_hash[:last_name]
    @email = user_hash[:email]
    @account_number = user_hash[:account_number]
    reject
  end

  def reject
    email_last = ""
    4.times do |n|
      email_last += "#{@email[@email.length-(1+n)]}"
    end
    while (!@email.include?("@")) || (email_last != "moc.")
      puts "Email must include an @ and end with .com! Please enter a valid email:"
      @email = gets.chomp
      email_last = ""
      4.times do |n|
        email_last += "#{@email[@email.length-(1+n)]}"
      end
    end
  end

end

class Bank

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

end

users = []

1.times do
  puts "Enter first name:"
  first_name = gets.chomp
  puts "Enter last name:"
  last_name = gets.chomp
  puts "Enter email:"
  email = gets.chomp
  users << BankAccount.new({first_name: first_name, last_name: last_name, email: email, account_number: rand(1000000000..9999999999)})
end

users.each do |user|
  puts "FIRST NAME: #{user.first_name}"
  puts "LAST NAME: #{user.last_name}"
  puts "EMAIL: #{user.email}"
  puts "ACCT #: #{user.account_number}"
end

bank = Bank.new(users)
bank.lookup(users[0].account_number)