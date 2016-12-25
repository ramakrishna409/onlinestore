# onlinestore
it's an online store, user can be able to login and see the inventory items and add them to cart and can make an order

To setup this project,
install Rails version 4
rake db:setup
rake db:create
rake db:seed

I have created the following architecture
Store(name: '', location: '') 
  has many
InventoryItems(name: '', quantity: 5, price: 25000, in_stock:true)   ==> belongs to Store

User(name: '', email: '', password: '')
  has many
  Cart(user_id:1)  ==> belongs to user (and also for store)
  has many
  LineItem(name: '', quantity:1, price:25, cart_id:1, order_id:1) ==> belongs to cart and order
  Order(user_id:1)
