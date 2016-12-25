class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :name
      t.integer :quantity
      t.float :price
      t.integer :cart_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
