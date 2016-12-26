# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Store.create(name: 'RamaStore', location: 'noida')
InventoryItem.create(store: Store.first, name: 'computer', quantity: 5, in_stock: true, price: 25000)
InventoryItem.create(store: Store.first, name: 'water-bottel', quantity: 5, in_stock: true, price: 250)
InventoryItem.create(store: Store.first, name: 'Pen', quantity: 5, in_stock: true, price: 25)
InventoryItem.create(store: Store.first, name: 'Pencil', quantity: 5, in_stock: true, price: 2)
InventoryItem.create(store: Store.first, name: 'Book', quantity: 5, in_stock: true, price: 25)