#15 given 
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s"

puts arr
puts '============='

arr.delete_if do |item|
  item.start_with?('s','w')
end

puts arr
 