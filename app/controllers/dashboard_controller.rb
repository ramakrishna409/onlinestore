class DashboardController < ApplicationController
	before_action :authenticate_user!

	def index
		@cart = current_cart
		@inventory_items = Store.first.inventory_items.where("in_stock = true AND quantity > 0")
	end
end