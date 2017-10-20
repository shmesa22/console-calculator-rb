repeat = true
while repeat
  puts "Ingresa un número, un operador y un número: "

  num1 = gets.chomp.to_f
  operator = gets.chomp
  num2 = gets.chomp.to_f

  puts "Quieres operar #{num1} #{operator} #{num2}?"

  if operator == "+"
    result = num1 + num2
  elsif operator == "-"
    result = num1 - num2
  elsif operator == "/"
    result = num1 / num2
  elsif operator == "*"
    result = num1 * num2
  end

  puts result

  ask_again = true
  while ask_again
    puts "Quieres hacer alguna otra operación? (Y/n)"

    again = gets.chomp.downcase

    if again == "y"
      repeat = true
      ask_again = false
    elsif again == "n"
      repeat = false
      ask_again = false
    else
      puts "No entiendo lo que dices"
    end
  end
end
