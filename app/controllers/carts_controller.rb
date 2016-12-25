class CartsController < ApplicationController
	
	def add_item_to_cart
		 @cart = current_cart
		inventory_item = InventoryItem.find(params[:id])
		if @line_item = @cart.line_items.where(inventory_item_id: inventory_item.id).first
			@line_item.quantity = @line_item.quantity + 1
    	else
      		@line_item = @cart.line_items.build(inventory_item: inventory_item, name: inventory_item.name, price: inventory_item.price, cart: @cart, quantity: 1)
    	end
      	@line_item.save
      	inventory_item.quantity = inventory_item.quantity - 1
      	inventory_item.save
      	redirect_to "/checkout"
	end

	def remove_from_cart
		line_item = LineItem.find(params[:id])
		inventory_item = line_item.inventory_item
		inventory_item.quantity = inventory_item.quantity + line_item.quantity
		inventory_item.save
		line_item.destroy
		redirect_to "/checkout"
	end

	def checkout
		@cart = current_cart
	end

	def order
		@cart = current_cart
		Order.transaction do
			line_items = @cart.line_items
			@order = Order.create(user: User.first, status: 'order-placed') #Todo
			line_items.each do |item|
				params = item.attributes.slice('name','price','quantity')
				params["order_id"] = @order.id
				order_line_item = LineItem.create(params)
			end
		end
		newcart = Cart.create(user: User.first) #Todo
    	session[:cart_id] = newcart.id
	end
	
	
end