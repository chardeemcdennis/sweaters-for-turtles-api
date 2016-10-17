'use strict';

// const bcrypt = require('bcrypt');
const mongoose = require('mongoose');
const uniqueValidator = require('mongoose-unique-validator');
const orderSchema = new mongoose.Schema({

  products: {
    type: Array,
    require: true,
  },
  total_amount: {
    type: Number,
    require: true
  },
  token: {
    type: String,
    require: true,
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  }
}, {
  timestamps: true,
});
orderSchema.plugin(uniqueValidator);
}),



const Order = mongoose.model('Order', orderSchema);
module.exports = Order;
