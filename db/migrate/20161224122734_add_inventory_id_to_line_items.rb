class AddInventoryIdToLineItems < ActiveRecord::Migration
  def change
  	add_column :line_items, :inventory_item_id, :integer
  end
end