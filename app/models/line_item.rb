class LineItem < ActiveRecord::Base
	belongs_to :cart
	belongs_to :order
	belongs_to :inventory_item
end
