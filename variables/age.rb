# Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

puts "How old are you?"
age = gets.chomp.to_i
puts "You are #{age} years old"
puts "In ten years you will be #{age + 10} years old"
puts "In twenty years you will be #{age + 20} years old"
puts "In thirty years you will be #{age + 30} years old"
puts "In fourty years you will be #{age + 40} years old"

