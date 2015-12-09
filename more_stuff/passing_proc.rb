#passing_proc.rb

def take_proc(proc)
  puts "I am in the method befor the prock is called"
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
    puts "im in the method after the proc has been called"
  end
end

proc = Proc.new do |number|
  puts "Iam in the proc"
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)