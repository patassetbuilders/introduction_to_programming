#exersize 1 & 2

a = [1,2,3,4,5,6,7,8,9,10]

a.each do |item|
    puts item if item > 5 
end

#exersize 3
puts "exersize 2"
b =  a.select { |num| num.odd? }
puts "#{b}"

#exersize 4 
puts "exersize 4"
a.push 11
a.unshift 0
puts "new array #{a}"

#exersize 5
puts "exersize 5"
a.pop
a.push 3
puts "exersize 5"
puts "#{a}"

# exersize 6 get rid of duplicates
#assume 
puts "exersize 6"
b = [1,2,3,4,4,5,6,7,7,8]
puts "#{b.uniq}"
puts "#{b}"

#exersize 7
#main difference between an array and a hash
#arrays have indes
#hashes have key value pairs

# exersize 8
old_hash = {:name => 'bob', :age => 22} # old method
new_hash = {name: 'bob', age: 22} # new method

puts old_hash
puts new_hash

# exersize 9
h= {a: 1, b: 2, c: 3, d: 4 }
puts "9.1 #{h[:b]}"
h[:e] = 5
puts "9.2 #{h}"

h.delete_if  {|k,v| v < 3.5}

puts "9.3 h= #{h}"

#exersize 10
#+yes
h = {a: ['dog', 'cat'], b: [1,2,3,4]}
puts "h = #{h}"
puts h[:a]
puts h[:b]

# array of hashes
arr = [{a: ['dog', 'cat'], b: [1,2,3,4]}, {b: [6729, 4546, 'pig']}]
puts arr

#exersize 11
# Api and other sources, 
# Ruby-doc  comprehensive, shows you what you dont know
# Rails Guides - rails specific 
# Rails Casts - just great explaination, 
# Ruby weekly - good to see what is out their, some opinion pieces are good
# Stack overflow  - when all else fails
# w3 schools for HTML & CSS

# exersize 12
#Given
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

#write a program that moves the information into the array for the correct person
# assumptions the first name in the contacts will be part of the email address

# get the first name of the contact array
# find if there is a matching name in the information array
# then use rejecx to see if there is a match in the array
# could not get rejex to work


contacts.each do |c|
 full_name = c[0].split
 first_name = full_name[0]
 puts first_name
 
 contact_data.each do |cd|
   puts cd[0]
   if /first_name.to_s/.match(cd[0].to_s)
     puts "matching email found"
   end
 end
end

#solution peek

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


# exersize 13 

puts "Joe's email #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number #{contacts["Sally Johnson"][:phone]}"


# exersize 14
# given the contact hash in exersize 11
# programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}



fields = [:email, :address, :phone]

data = contact_data.shift
puts data

contacts.each do |name, hash|
  fields.each_with_index do |field, index|
    hash[field] = data[index]
  end
end

puts contacts
puts contacts['Joe Smith'][:phone]
puts contacts['Sally Johnson'][:address]

#15 given both parts
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s"

puts arr

arr.delete_if do |item|
  item.start_with?('s','w')
end

puts arr

#exersize 16 
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

#exersize 17
# hashses contain the same key value pairs
# even thought the construction method and order differed 
# program will output "These hashes are not the same!"