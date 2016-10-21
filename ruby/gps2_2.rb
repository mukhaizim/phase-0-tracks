# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: Hash
# steps: 
# we need to make a new empty hash
# somehow, i need to split apart the items in the string and add them as keys to the new hash
# the value for each key should be 1

# array = [1, 2, 3]

# array[0] == 1

# hash = { "one" => 1, "two" => 2, "three" => 3}

# hash["one"] == 1

def create_list(items)
grocery_list ={}
  key_array = items.split(' ')
  key_array.each do |item|
    grocery_list[item]=1
  end
  grocery_list 
end

our_list = create_list("Carrots Apples Cereal Pizza")

# Method to add an item to a list
# input: item name and optional quantity
# output: grocery_list including new item
# steps: 
#somehow we need to convert string to a key and a quantity 
# add to grocery_list


def add_item(list, item, quantity = 1)
list[item]=quantity 
  list
end

add_item(our_list, "Lemonade",2)
add_item(our_list, "Tomatoes",3)
add_item(our_list, "Onions")
add_item(our_list, "Icecream",4)


# Method to remove an item from the list
# input: item name 
# output: grocery_list excluding deleted item
# steps:
#somehow delete remove an item from grocery_list
def delete_item(list,item)
list.delete(item)
  list
end

delete_item(our_list,"Lemonade")


# Method to update the quantity of an item
# input: item name and new qauntity 
# output: grocery_list with updated quantity
# steps:
#somehow update quantity of an item 

def update_quantity(list,item,quantity)
list[item] = quantity
  list
end

update_quantity(our_list,"Icecream",1)


# Method to print a list and make it look pretty
# input: our grocery_list
# output: a nice looking grocery list
# steps: go through each key and value and print them 

def print_list(list)
  list.each {|key,value| puts "#{value} #{key}" }

end

print_list(our_list)