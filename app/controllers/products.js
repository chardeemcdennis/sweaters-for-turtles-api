'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Product = models.product;

const index = (req, res, next) => {
  Product.find({})
    .then(products => res.json({ products }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  Product.findById(req.params.id)
    .then(product => product ? res.json({ product }) : next())
    .catch(err => next(err));
};

// const create = (req, res, next) => {
//   let product = Object.assign(req.body.product);
//   Product.create(product)
//     .then(product => res.json({ product }))
//     .catch(err => next(err));
// };

module.exports = controller({
  index,
  show,
  // create
});
