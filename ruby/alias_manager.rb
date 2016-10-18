def secret_name 
puts "Hi, what's your name ?"
full_name = gets.chomp
while full_name != "quit"

#swaps name 
name_array = full_name.split(' ')
name_array
name_array.class

swap_name = []
name_array.reverse_each do |name|
	         swap_name << name
    		end 
    
new_string = swap_name* " "

#next letter 
new_string.chars
the_next_array = []
new_string.chars.each do |letter|
	if letter == "z" 
		letter = "a"
		the_next_array << letter
		elsif letter == " "
		letter = " "
		the_next_array << letter
	
	else the_next_array << letter.next 
      end 
      end
p the_next_array* " "	

puts 

puts "Give me another name"
full_name = gets.chomp
end
end 



secret_name 