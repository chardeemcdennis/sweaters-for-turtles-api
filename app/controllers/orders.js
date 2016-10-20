'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Order = models.order;

const authenticate = require('./concerns/authenticate');
const stripe = require("stripe")("pk_test_TmOEajfRUrzDTQ37AIJ1A7hp");

const makeCharge = (req, res, next) => {
  // console.log('req.body is', req.body);
  // console.log('REQUEST STRIPE');

  // console.log(req.body.stripe_token);

  let token = req.body.stripe_token;
  let amount = (req.body.total_amount * 100);
  // console.log('token is', token);
  // console.log('amount is', amount);

  stripe.charges.create({
    amount: amount, // Amount in cents
    currency: "usd",
    source: token,
    // description: "Example charge"
    },
      function(err/*, charge*/) {
        if (err && err.type === 'StripeCardError') {
          console.err(err);
          // The card has been declined
    }
    else {
      // res.json({ charge });
      res.sendStatus(200);
    }
  })
  .catch(err => next(err));
};

const indexUserOrders = (req, res, next) => {
  Order.find({ _owner: req.currentUser._id })
    .then((orders) => res.json({ orders }))
    .catch(err => next(err));
};

// const showUserOrder = (req, res, next) => {
//   Order.findById({ _id: req.params.id, token: req.currentUser.token })
//     .then(order => order ? res.json({ order }) : next())
//     .catch(err => next(err));
// };

const create = (req, res, next) => {
  let order = Object.assign(req, {
    products: req.body.products,
    total_amount: req.body.total_amount,
    _owner: req.currentUser._id,
  });

  Order.create(order)
    .then(order => res.json({ order }))
    .catch(err => next(err));
};

const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id};
  Order.findOne(search)
    .then(order => {
      if (!order) {
        return next();
      }

      return order.remove()
        .then(() => res.sendStatus(200));
      })
      .catch(err => next(err));
};

module.exports = controller({
  indexUserOrders,
  // showUserOrder,
  makeCharge,
  create,
  destroy,
}, { before: [
  { method: authenticate },
], });
