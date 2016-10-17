#def sports
#	puts "What sports do you like playing?"
#	yield("Football", "Basketball")
#end

#sports {|sport1, sport2| puts "I love playing both #{sport1} and #{sport2}"}

#In phase-0-tracks/ruby/iteration.rb, declare an array and a hash, and populate each of them with some data. We don't care what data you use, but it shouldn't be nonsense data -- it should represent a reasonable scenario in which those data structures would be used. (A hash full of random letters and numbers, for instance, is not as meaningful as a hash that associates Hollywood actors with their best-known character.

array_of_year = ["January","Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

hash_of_year = {
	January: "1",
	February: "2",
	March: "3",
	April: "4",
	May: "5",
	June: "6",
	July: "7",
	August: "8",
	September: "9",
	October: "10",
	November: "11",
	December: "12",
}

array_of_year.each do |months|
	puts "There is a month called: #{months}"
end

#Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.

hash_of_year.each do |months, month_number|
	puts "#{months} is the #{month_number}th month of the year!"
end 


#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
array_of_year.each do |months|
months_char = months.length
	if months_char > 5 
		array_of_year.delete(months)
	elsif months_char == 3
		months.insert(3, "!") 
	puts "#{months} has a name that has less than 5 letters! has exactly #{months_char} letters"
	elsif months_char == 4
	months.insert(4, "!") 		
	puts "#{months} has a name that has less than 5 letters! has exactly #{months_char} letters"
	elsif months_char == 5
		months.insert(5, "!") 		
	puts "#{months} has a name that has less than 5 letters! has exactly #{months_char} letters"
end
end


#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
later_months = hash_of_year.select {|month, month_number| month_number.to_i >= 6}
later_months.each do |month, month_number|  
	puts "#{month} is in the second half of the year! It is the #{month_number}th month of the calendar"
end

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
my_array = ["hello", "my" , "name", 12 , "is", "mark"]
