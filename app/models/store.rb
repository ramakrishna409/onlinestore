class Store < ActiveRecord::Base
	has_many :inventory_items
end
