class TodoList

	def initialize(arr)
		@arr = arr
	end 

#alt to consider: 
# def initialize(list = [])
# 	@arr = list 
# end 

	def get_items
		@arr
	end 

	def add_item(item)
		@arr << item 
	end 

	def delete_item(item)
		@arr.delete(item)
	end 

	def get_item(index)
		@arr.at(index)
	end 
end

