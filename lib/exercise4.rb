def game
  gameStart = true
  count = 0
  randNum = 1+rand(100)
  puts 'Guess a number between 1 and 100'
  guess =gets.chomp.to_i
  while gameStart == true do
    count += 1
    if guess == count
      puts "you got it in #{count} tries"
      break
    elsif guess > count
      puts "Number is smaller than #{guess}"
    else guess < count
      puts "Number is bigger than #{guess}"
    end
    print "Guess again!"
    guess = gets.chomp.to_i
  end
end
game()
