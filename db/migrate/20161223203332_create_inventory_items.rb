class CreateInventoryItems < ActiveRecord::Migration
  def change
    create_table :inventory_items do |t|
      t.integer :store_id
      t.string :name
      t.integer :quantity
      t.boolean :in_stock
      t.float :price

      t.timestamps null: false
    end
  end
end
