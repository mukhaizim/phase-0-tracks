classroom = {
	furniture: ["whiteboard", "teacher\'s table", 
	             desks: { total: 6, 
	                      available: 3
	             }
	],
		    
    supplies: {
    	pens: 30, 
    	notepads: 12
    },
    
    students: ["Adam" ,"Sally","Dana"],
    
    bookshelf: {
    	history_books: ["the rise and fall of rome", "Killing the Rising Sun"],
    	science_books: ["physics 101", "thermodynamics", "material science "],
    	literature: ["The Great Gatsby"]
    } 
}

#Add a student to the class 

# 1. reduce available seats 
classroom [:furniture][2][:desks][:available]= 2
puts classroom [:furniture][2]

# 2. add a name
classroom [:students][3]= "John"
puts classroom [:students]

#Capitlize a book name 
classroom [:bookshelf][:history_books][0]= classroom [:bookshelf][:history_books][0].split.map!(&:capitalize)*' '
puts classroom [:bookshelf][:history_books]	

#Add a book to literature
classroom [:bookshelf][:literature][1]="The Kite Runner"
puts classroom [:bookshelf][:literature]
