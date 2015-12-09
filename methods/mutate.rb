# Example of a method that modifies its argument permanently
# mutate.rb

def some_method(number)
  number = 7 # this is implicitly returned by the method
  puts number
end

a = 5
some_method(a)
puts a

# Example of a method that modifies its argument permanently
# mutate.rb

a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

# Example of a method that does not mutate the caller
# mutate.rb

a = [1, 2, 3]

def no_mutate(array)
  puts "#{array.last}"
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"