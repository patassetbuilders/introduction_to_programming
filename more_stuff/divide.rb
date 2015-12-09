# comment here


def divide(number, divisor)
  begin
   answer = number / divisor
   puts answer
  rescue  => e
    puts e.message
  end
end

 divide(16, 4)
 divide(4, 0)
 divide(14, 7)