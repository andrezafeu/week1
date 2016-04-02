class ShoppingCart

	def initialize
		cart_items = [
			{:item => apple, :price => 10, :quantity => 0},
			{:item => orange, :price => 5, :quantity => 0},
			{:item => grape, :price => 15, :quantity => 0},
			{:item => banana, :price => 20, :quantity => 0},
			{:item => watermelon, :price => 50, :quantity => 0}]
	end

	def add_item_to_cart(item)
		@item = item
		puts @cart_items.select { |x| x[:] == item
	end

	def show
		puts
	end

	def cost

	end

end