puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volumne level? choose form 1 to 10"
volume = gets.chomp.to_i
puts "Is the hamster a good candidate for adoption (yes/no)"
good_adoption = gets.chomp
puts "what is the estimated age of the hamster"
age = gets.chomp.to_i
if age == 0
	age = nil
end
puts "So here is what we know about the hamster so far:"
puts "Name : #{name}"
puts "Volume level : #{volume}"
puts "Good candidate for adoption: #{good_adoption}"

if age != nil
	puts "Age : #{age}"
else 
	puts "We dont know the age"
end



