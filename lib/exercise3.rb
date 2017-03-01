
@bal = 4000

def bank
  puts 'What would you like to do? (deposit, withdraw, check_balance)'
  response = gets.chomp

  if response == 'deposit'
    deposit(@bal)
  elsif response == 'withdraw'
    withdraw(@bal)
  elsif response == 'check_balance'
    puts "Your current balance is #{@bal}"
  else
    puts 'please check your response'
      end
end

def deposit(bal)
  p "Your current balance is #{bal}"
  p 'how much would you like to deposit?'
  amount = gets.chomp.to_f
  total = amount + bal
  p "You deposited #{amount} and your total is #{total}"
end

def withdraw(bal)
  puts "Your current balance is #{bal}"
  puts 'How much would you like to withdraw?'
  amount = gets.chomp.to_f
  puts "You entered: #{amount}"
  total = balance - amount
  p "You withdrew #{amount} and your total is #{total}"
end
bank
