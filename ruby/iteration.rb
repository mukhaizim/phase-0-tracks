students = ["Sara", "Sam", "merry", "adam", "Mark"]

p students 
#iterate through the array using .each 
students.each do |names|
	puts names
end

#iterate through the array using .map! 
students.map!(&:capitalize)
p students 

students_grades = {"Sara" => 8 , "Sam"=> 7, "Merry" => 4, "Adam" => 10, "Mark" => 5}
p students_grades


#iterate through the array using .each 
students_grades.each do |name,grade| 
	puts "hey #{name}, you scored #{grade} on your quiz"
end 

#try in the future to see  if i can add good job for people who got 7 or above 
# and add try harder for people with less than 7 

#2.1
array = [1,2,3,4,5,6,7]

array.delete_if do |number|
	number < 4 
	end
p array 

#2.2
array.keep_if do |number|
	number < 6
	end
p array

array_2 = [1,2,3,4,5,6,7]
array_2.select! do |number|
	number < 5
	end
p array_2


array_3 = [1,2,3,4,5,6,7]

array_3.drop_while {|number| number < 5}
	


b = [1,"hi" ,3, "mark" ,5,6,7]

b.drop_while {|item| item != 5}






























