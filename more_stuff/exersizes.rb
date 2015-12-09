#exersize 1 
a = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

puts "checking for lab not 'Lab' in #{a}"

a.each do |item|
  if 
    /lab/.match item
    puts " \"lab\" found in #{item}"
  else
    puts " \"lab\" not found in #{item}"
  end
end
    
  
# exersize 2 & 4
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
# nothing is printed
#proc object returned

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
# prints as expected block is called

# exersize 3
# exception handeling rescues the code, i.e. keeps the program running if it encounters and unexpected problem

#exersize 5
# the block should be proceeded with a & symbol as in &block not block