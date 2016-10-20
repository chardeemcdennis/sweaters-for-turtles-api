'use strict';

module.exports = require('lib/wiring/routes')

// create routes

// what to run for `GET /`
.root('root#root')

// standards RESTful routes
.resources('examples')

// custom routes
.resources('carts')
.get('/cart-show/:id', 'carts#showCart')
.patch('/cart-update/:id', 'carts#addToCart')
.patch('/remove-product/:id', 'carts#removeProduct')
.patch('/clear-cart/:id', 'carts#clearCart')
.post('/order-create', 'orders#create')
.post('/make-charge', 'orders#makeCharge')

.resources('orders')
.get('/user-orders/:_owner', 'orders#indexUserOrders')
.delete('/user-orders/:id', 'orders#destroy')
.resources('products')
.resources('profiles')

// users of the app have special requirements
.post('/sign-up', 'users#signup')
.post('/sign-in', 'users#signin')
.delete('/sign-out/:id', 'users#signout')
.patch('/change-password/:id', 'users#changepw')
.resources('users', { only: ['index', 'show'] })

// all routes created
;
