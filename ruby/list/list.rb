class TodoList
	def initialize(list)
		@list = ["do the dishes", "mow the lawn"]
	end
	def get_items
		@list
	end
	def add_item(item)
		@list.push(item)
	end
	def delete_item(deleted_item)
		@list.delete(deleted_item)
	end
	def get_item(index)
		@list[index]
	end
end

list = TodoList.new(["do the dishes", "mow the lawn"])
list.add_item("mop")
list.delete_item("do the dishes")
list.get_item(0)