'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const User = models.user;


const authenticate = require('./concerns/authenticate');

const index = (req, res, next) => {
  User.find()
    .then(carts => res.json({ carts }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  User.findById(req.params.id)
    .then(User => User ? res.json({ User }) : next())
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let User = Object.assign(req.body.User, {
    _owner: req.currentUser._id,
  });
  User.create(User)
    .then(User => res.json({ User }))
    .catch(err => next(err));
};

const addToCart = (req, res, next) => {
  User.findById({ _id: req.params.id, token: req.currentUser.token })
  .then((user) => {
  user.update({$push: {"products": req.body}});
  user.cart.products.push(req.body);
  return user.save();
})

.then(() => res.sendStatus(200))
.catch(err => next(err));
};

const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  User.findOne(search)
    .then(user => {
      if (!user) {
        return next();
      }

      return user.remove()
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

module.exports = controller({
  index,
  show,
  // create,
  addToCart,
  destroy,
}, { before: [
  { method: authenticate, except: ['index', 'show'] },
], });
