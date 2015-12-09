zero = ["a", "d", "f", nil, "r", "t", "h", 5, 4, ]
puts "Before each call"
zero.each { |element| puts element.length } rescue puts "Can't do that!"
puts "After each call"