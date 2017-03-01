  puts "What calculation would you like to do? (add, sub,mult,div)"
  response =gets.chomp

  puts "what is the first number?"
  num1=(gets.chomp).to_f

  puts "what is the second number?"
  num2=(gets.chomp).to_f

  if response == "add"
      result =num1 + num2

  elsif response =="sub"
    result = num1 - num2

  elsif response  =="mult"
    result = num1 * num2

  elsif reponse == "div"
    result = num1 / num2
  end

puts "The result is #{result}"
