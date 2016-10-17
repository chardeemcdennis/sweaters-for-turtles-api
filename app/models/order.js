'use strict';

const mongoose = require('mongoose');
const orderSchema = new mongoose.Schema({

  products: {
    type: Array,
    require: true,
  },
    //   [
    // {
    //   productId: String,
    //   name: String,
    //   price: Number,
    //   quantity: Number,
    //   image: String,
    // }
    // ],
  total_amount: {
    type: Number,
    require: true
  },
  // cancelled: {
  //   type: Boolean,
  //   default: false,
  // },
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

const Order = mongoose.model('Order', orderSchema);
module.exports = Order;
