## Sweaters for Turtles API

README for Sweaters for Turtles API

Team Members: James Coombs, Ben Lewis, Will McBride, and Katie Noddin

Deployed Sweaters for Turtles Client URL: https://chardeemcdennis.github.io/sweaters-for-turtles-client/

Sweaters for Turtles Client repo: https://github.com/chardeemcdennis/sweaters-for-turtles-client

##About Sweaters for Turtles
	Sweaters for Turtles, a Nozama company, is the largest retailer of animal sweaters and they’ve been at the top of the industry for the past twenty years. However, with the advent of Etsy, they’ve noticed a steady decline of sales, as some users have switched to niche and craft sellers. As the leader in the market, Nozama has decided to create their own hub where crafters can sell their products through their platform and bring the whole market on board to their product.
	For the first version of their product they want a customer to be able to go to their site, browse through available items, add selected items to a shopping cart and purchase them using stripe payment processing. After an order has been placed the customer should be able to go back to the order to get updates as well as view their order history.

##Requirements

-mongodb
-nodejs

##Stripe

This repo is set up to use test stripe credentials. When you are deploying this code replace instances of the Stripe key with your own production information.

```
stripe = require("stripe")("sk_test_BQokikJOvBiI2HlWgH4olfQ2");
```

If you are using test cards you can reference the Stripe card documentation here: https://stripe.com/docs/testing#cards

##API Expected Endpoints:

Verb URI |  Pattern | Controller#Action
POST | /sign-up | users#signup
POST | /sign-in | users#signin
DELETE | /sign-out/:id | users#signout
PATCH | /change-password/:id | users#changepw
PATCH | /cart-update/:id | carts#addToCart
GET | /cart-show/:id | carts#showCart
PATCH | /clear-cart/:id | carts#clearCart
PATCH | /remove-product/:id | carts#removeProduct
GET | /user-orders/:_owner | orders#indexUserOrders
DELETE | /user-orders/:id | orders#destroy
POST  \ /make-charge | orders#makeCharge
