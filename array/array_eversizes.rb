## exersixe 1
## qiven
#arr = [1, 3, 5, 7, 9, 11]
#number = 3
##write a program that checks if 3 is included in the array
#
#puts arr.include? number

# exersize 2
#arr = ["b", "a"]
#puts "#{arr}"
#arr = arr.product(Array(1..3))
#puts "#{arr}"
#puts arr.first.last
#arr.first.delete(arr.first.last)
#puts "#{arr}"
#puts "====part b====="
#arr = ["b, a"]
#puts "arr = #{arr}"
#b = [Array(1..3)]
#puts "b = #{b}"
#arr = arr.product([Array(1..3)])
#puts "#{arr}"
#arr.first.delete(arr.first.last)
#puts "#{arr}"

#exersize 3
  #arr = [["test", "hello", "world"],["example", "mem"]]
  ##print the word example
  # puts "#{arr}"
  # #puts "#{arr[1][0]}"
  # puts arr[1][0]
  
#exersize 4
   # arr = [15, 7, 18, 5, 12, 8, 5, 1]
   # 
   # puts "#{arr.index(5)}"
   # # what is the index of the element with a value of 5 ans3
   # 
   # #puts "#{arr.index[5]}"
   # # error 
   # 
   # puts "#{arr[5]}"
   # #puts the element with index 5 i.e. the sixth element
  
#example 5
   #  string = "Welcome to Tealeaf Academy!"
   #  a = string[6]
   #  b = string[11]
   #  c = string[19]
   #  
   #  puts a # e
   #  puts b # T
   #  puts c  
   
#example 6
#error is names['margret'] does not correct code

   #  names = ['bob', 'joe', 'susan', 'margaret']
   #  posn = names.index('margaret') 
   #  names[posn] = 'jody'
   #  puts "#{names}"
   #  
   
#example 7
initial_array = [1,2,3,4,5,6,7,8,]
puts "#{initial_array}"
final_array = initial_array.map do |x|
  x += 2
end

p initial_array
p final_array
  

#alternate solution
initial_array = [1,2,3,4,5,6,7,8,]

final_array = []

initial_array.each do |x|
  final_array <<m x + 2
end


p initial_array
p final_array
