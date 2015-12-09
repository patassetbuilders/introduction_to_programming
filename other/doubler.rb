def doubler(start)
  puts start
  if start < 10
    doubler(start * 2 )
  end
end

puts "this program will doubel your number"
puts "enter your number"
start = gets.chomp.to_i
doubler(start)
