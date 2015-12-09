#given
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     

#required turn it into a new array that consists of strings containing one word
  #get each item and split if it has a space
  
b = []

a.each do |item|
  b << item.split(' ')
end

a = b.flatten
puts "#{a}"

#alternate solution
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |item| item.split }
a = a.flatten
puts "#{a}"
