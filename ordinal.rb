puts "Enter a number"
n = gets.chomp.to_i
x = n % 10

if n == 11 
  puts "That's the 11th item"
  
  elsif n == 12
      puts "That's the 12th item"

  elsif n == 13
    puts "That's 13th item"
  
else 

  if x == 1 
    puts " That's the #{n}st item"

  elsif x == 2 
    puts  "That's the #{n}nd item"

  elsif x == 3
    puts "That's the #{n}rd item"


  else
    puts "That's the #{n}th item"
  end
  
end


 