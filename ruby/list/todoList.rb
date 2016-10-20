class TodoList
	def initialize (new_array)
		@list_array = new_array
	end

	def get_items
		@list_array
	end
	
	def add_item (task)
		@list_array << task
	end

	def delete_item (item)
		@list_array.delete_if {|x| x == item}
	end 

	def get_item(index)
		@list_array[index]
  	end

end



