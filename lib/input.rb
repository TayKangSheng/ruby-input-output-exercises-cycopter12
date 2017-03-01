
#Input & Output


class BankAccount
  attr_reader :balance

  @@totalBalance =100000
  @@authorized = false

  def initialize(balance, pin)
    @balance = balance
    @pin = pin
  end

  def balance
   "total balance of the bank is:  #{@@totalBalance}\n and my account balance is #{@balance}"
  end

  def self.get_balance
   "total balance of the bank is:  #{@@totalBalance}\n and my account balance is #{@balance}"
  end

  def welcome
    puts "Hello there, welcome to the bank: who are you?"
    customer = gets.chomp
    p "please enter your pin:"
    given_pin= gets.chomp

    if authorize(given_pin)
    #authroize the given pin with @pin
    p "Hello #{customer}, with pin #{given_pin}"
    @customer = customer
    @@authorized = true
  else
    p "Access Denied"
    end
  end

  def withdraw
    if @@authorized
      p "hello #{@customer}, how much you want to withdraw"
      amount = gets.chomp
      @balance -= amount.to_i
      p "Hello #{@customer}, your balance is now #{@balance}"
    else
      p "You are not authorized"
  end
end

  def deposit
    if @@authorized
      p "hello #{@customer}, how much you want to deposit"
      amount = gets.chomp
      @balance += amount.to_i
      p "Hello #{@customer}, your balance is now #{@balance}"
    else
      p "You are not authorized to deposit"
  end
end


  private

  def authorize(given_pin)
    @pin == given_pin.to_i
  end
end

prima_acct = BankAccount.new(10000, 1234)
prima_acct.welcome
prima_acct.withdraw
prima_acct.balance
prima_acct.deposit


#JS
# var primaAccount =new BankAccount()

#RUBY

# prima_acct.balance
# prima_acct.pin
# BankAccount.get_balance
# prima_acct.balance
