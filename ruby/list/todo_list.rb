class TodoList

# attr_accessor :list 

	def initialize(arr)
		@arr = arr
	end 

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

