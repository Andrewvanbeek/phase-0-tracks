class TodoList
	def initialize(chorearray)
		@list = chorearray
	end

	def get_items
		@list 
	end

	def add_item(new_chore)
		@list << new_chore
	end

	def delete_item(completed_chore)
		@list.delete(completed_chore)
	end

	def get_item(index)
		@list[index]
	end
end

# list = TodoList.new(["do the dishes", "mow the lawn"])
# p list.get_items
# p list.add_item("mop")
# p list.delete_item("mow the lawn")
# p list.get_item(0)