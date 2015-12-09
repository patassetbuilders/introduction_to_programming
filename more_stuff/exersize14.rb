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