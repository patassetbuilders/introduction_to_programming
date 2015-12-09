puts "this program will count down from a number"
puts "enter your nomber"
x = gets.chomp.to_i

until x < 0
  puts x
  x -=  1
end

puts "Done!"