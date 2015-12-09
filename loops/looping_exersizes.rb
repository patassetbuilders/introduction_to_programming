require "pry"

#exersize 1 
#x = [1, 2, 3, 4, 5]
#x.each do |a|
#  a + 1
#  puts a
#end

#it returns the same array X

#exersize 2

#puts "This loop will keep going until you type stop"
#num = ""
#while num != "stop"
#  puts  "Enter something or stop to end"
#  num = gets.chomp.downcase
#end
#puts "Stopping"

#exersize 3
#require "pry"
#a = %w[dog cat bird fish reptile]
#a.each_with_index do |b, index|
#  puts "Position #{index}. is a #{b}" 
#end

#exersize 4

def countdown(num)
  puts num
  if num > 0 
    countdown(num - 1)
  end
end

puts "this program counts down to the number zero"
puts "enter your starting number"
seed_number = gets.chomp.to_i
countdown(seed_number)