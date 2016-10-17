'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Order = models.order;

const authenticate = require('./concerns/authenticate');

const indexUserOrders = (req, res, next) => {
  Order.find({}, {
    _owner: req.currentUser._id,
  })
    .then(orders => res.json({ orders }))
    .catch(err => next(err));
};

const showUserOrder = (req, res, next) => {
  Order.findById(req.params.id, {
    _owner: req.currentUser._id,
  })
    .then(order => order ? res.json({ order }) : next())
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let order = Object.assign(req.body.order, {
    _owner: req.currentUser._id,
  });

  Order.create(order)
    .then(order => res.json({ order }))
    .catch(err => next(err));
};

// const cancel = (req, res, next) => {
//   let search = { _id: req.params.id, _owner: req.currentUser._id};
//   Order.findOne(search)
//     .then(order => {
//       if (!order) {
//         return next();
//       }
//
//       delete req.body._owner;
//       return order.update( {$set: { "cancelled": true }})
//         .then(() => res.sendStatus(200));
//       })
//       .catch(err => next(err));
// };


module.exports = controller({
  indexUserOrders,
  showUserOrder,
  create,
  // cancel,
}, { before: [
  { method: authenticate },
], });
