#change a string to capitalise if longer than 10

puts "Enter a string?"
your_string = gets.chomp
if your_string.length > 10
  puts your_string.upcase
end
