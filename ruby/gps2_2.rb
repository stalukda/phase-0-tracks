# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def list_creation(items)
# steps: 
  	#split method on input string 
  	item_arr = items.split 
  	grocery_hash = {}
  	#iterate through the array, add elements as keys to a new hash
  	 # set default quantity [placeholder for hash]
  	item_arr.each { |item| grocery_hash[item] = 1 } 
  # print the list to the console [can you use one of your other methods here?]
  	puts grocery_hash
  	return grocery_hash
# output: hash 
end 

ex_list = list_creation( "carrots apples cereal pizza")

# Method to add an item to a list
def list_add(food_hash, grocery_item, number=1)
	 food_hash[grocery_item] = number
	 return food_hash
end 

p list_add(ex_list, "pears")

def list_remove (food_hash2, remove_item)
# input: hash, item to remove 
# steps: remove item from hash using delete method
	food_hash2.delete(remove_item) 
# return the hash 
	return food_hash2
# output: hash with item removed 
end 

p list_remove(ex_list, "pears")

# Method to update the quantity of an item

def list_update(food_hash3, update_item, update_quant)
	 food_hash3[update_item] = update_quant
	 return food_hash3
end 

p list_update(ex_list, "pizza", 20)


# Method to print a list and make it look pretty
# input:
# steps:
# output: