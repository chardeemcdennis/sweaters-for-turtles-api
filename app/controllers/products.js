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

module.exports = controller({
  index,
  show,
});
