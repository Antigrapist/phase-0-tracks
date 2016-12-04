class TodoList
	attr_accessor :listitems

	def initialize(list)
		@listitems = []
		list.each {|item| @listitems.push (item)}	
	end

	def get_items
		@listitems
	end

	def add_item(item)
		@listitems << item
	end

	def delete_item(item)
		@listitems.delete (item)
	end

	def get_item (index)
		@listitems[index]
	end

end

