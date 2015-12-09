def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else 
    puts "Hi, my name is #{name} and I'm #{options[:age]}" + "years old and I line in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob",  city: "New York City")

name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19, "Tom" =>  31}
puts name_and_age.has_key?("Steve")

puts name_and_age.select { |k,v| v == 31 }

puts name_and_age.fetch("Steve")

puts "#{name_and_age.to_a}"

puts "#{name_and_age.keys}"
puts "#{name_and_age.values}"

name_and_age.keys.each { |k| puts k }