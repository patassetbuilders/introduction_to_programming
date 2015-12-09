#this program multiplies two numbers

def multiply(a=1, b=1)
   a * b
end

puts "This program will multiply two numbers together"

puts "What is your first number?"

first_number = gets.chomp.to_f

puts "What is your second number?"

second_number = gets.chomp.to_f


puts multiply(first_number,second_number)