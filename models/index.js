const Sequelize = require('sequelize');
const config = require('../config/config.json')[process.env.NODE_ENV || 'development'];
const sequelize = new Sequelize(config.database, config.username, config.password, config);

// Import models
const Villa = require('./villa');
const User = require('./user');
const Booking = require('./booking');

// Villa associations
Villa.hasMany(Booking, {
  foreignKey: 'villaUuid',
  as: 'Bookings'
});

// User associations
User.hasMany(Booking, {
  foreignKey: 'customerUuid',
  as: 'Bookings'
});
User.hasMany(Villa, {
  foreignKey: 'owner',
  as: 'OwnedVillas'
});

Booking.belongsTo(Villa, {
  foreignKey: 'villaUuid',
  as: 'Villa'
});

Booking.belongsTo(User, {
  foreignKey: 'customerUuid',
  as: 'Customer'
});

Booking.belongsTo(User, {
  foreignKey: 'bookedBy',
  as: 'BookedBy'
});

Booking.belongsTo(User, {
  foreignKey: 'amendedBy',
  as: 'AmendedBy'
});

module.exports = {
  sequelize,
  Sequelize,
  Villa,
  User,
  Booking
};
