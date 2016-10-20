'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const User = models.user;

const authenticate = require('./concerns/authenticate');

// const index = (req, res, next) => {
//   User.find()
//     .then(carts => res.json({ carts }))
//     .catch(err => next(err));
// };

const showCart = (req, res, next) => {
  User.findById({ _id: req.params.id })
    .then(() => res.json({ cart: req.currentUser.cart }))
    .catch(err => next(err));
};

const addToCart = (req, res, next) => {
  User.findById({ _id: req.params.id, token: req.currentUser.token })
  .then((user) => {
  user.update({$push: {"cart": req.body}});
  user.cart.push(req.body);
  return user.save();
})

.then(() => res.sendStatus(200))
.catch(err => next(err));
};

const removeProduct = (req, res, next) => {
  User.findById({ _id: req.params.id, token: req.currentUser.token })
    .then((user) => {
    user.cart.splice(req.body.index);
    return user.save();
  })
  .then(() => res.sendStatus(200))
  .catch(err => next(err));
};

const clearCart = (req, res, next) => {
  User.findById({ _id: req.params.id, token: req.currentUser.token })
    .then((user) => {
    user.cart = [];
    return user.save();
  })
  .then(() => res.sendStatus(200))
  .catch(err => next(err));
};

module.exports = controller({
  // index,
  showCart,
  addToCart,
  removeProduct,
  clearCart,
}, { before: [
  { method: authenticate, except: ['index', 'show'] },
], });
