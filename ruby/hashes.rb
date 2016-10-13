client_data = {}

puts "Please fill out the following:"

puts "Name:"
client_data [:name] = gets.chomp

puts "Address:"
client_data [:address] = gets.chomp

puts "Email:"
client_data [:email] = gets.chomp

puts "Phone:"
client_data [:phone] = gets.chomp

puts "Number of Children:"
client_data [:number_of_children] = gets.chomp

puts "First time client? (yes/no)"
firstTime = false
if gets.chomp == "yes"
	firstTime = true
end
client_data [:first_time_client] = firstTime


puts


client_data.each do |c_word, word|
	puts "#{c_word}: #{word}"
end

puts
puts "Is the information above correct or do you need to change something? type none if everything looks right or type the title that you would like to change in lower case e.g. \"email\""
change = gets.chomp
if change == "none"
puts "Great, you're all set! "
else
	
puts

puts "Please enter the new #{change}"
if change == "number of children"
	change = "number_of_children"
	elsif change == "first time client"
	change = "first_time_client"
end	

symbolName = change.to_sym
new_value = gets.chomp
client_data [symbolName] = new_value
end
p client_data

# Create a Hash named client_data 
# Ask user for information 
# Store information in Hash
# Display all information 
# Ask the user if information is correct 
  # If somethign is wrong ask user for correct info 
  # Replace information/value with new information 
  # Print hash 