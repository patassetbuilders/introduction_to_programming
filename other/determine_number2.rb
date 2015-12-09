# checks out a number between 1 and 100
require "pry"

def evaluate_number(num)
  if num < 0 
    puts  "You carn't enter  number less than zero"
  elsif num <= 50
    puts "your number is between 0 and 50"
  elsif num <= 100
    puts  "your number is between 51 and 100"
  else
    puts "your number is greater than 100"
  end
end

def evaluate_using_case(num)
  case
  when num < 0 
    puts  "You carn't enter  number less than zero"
  when num <= 50
    puts "your number is between 0 and 50"
  when num <= 100
    puts  "your number is between 51 and 100"
  when num > 100
    puts "your number is greater than 100"
  end
end


puts "enter your number"
your_number = gets.chomp.to_i

evaluate_number(your_number)
evaluate_using_case(your_number)

# exersize 6 the if statement is missing an end




  




 
