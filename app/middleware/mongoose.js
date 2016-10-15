'use strict';

const mongoose = require('mongoose');

let uri;
if (process.env.NODE_ENV === 'production') {
  uri = process.env.MONGOLAB_URI;
} else {
  uri = 'mongodb://localhost/sweaters-for-turtles-api';
}

mongoose.Promise = global.Promise;
mongoose.connect(uri);

module.exports = mongoose;
