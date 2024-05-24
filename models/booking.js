const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');

class Booking extends Model {}

Booking.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    uuid: {
        type: DataTypes.STRING(36),
        unique: true,
        allowNull: false
    },
    customerUuid: {
        type: DataTypes.STRING(36),
        allowNull: false,
        references: {
            model: 'User',
            key: 'uuid'
        }
    },
    villaUuid: {
        type: DataTypes.STRING(36),
        allowNull: false,
        references: {
            model: 'Villa',
            key: 'uuid'
        }
    },
    startDate: {
        type: DataTypes.DATE,
        allowNull: false
    },
    endDate: {
        type: DataTypes.DATE,
        allowNull: false
    },
    adults: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    children: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    recordedCost: {
        type: DataTypes.DECIMAL(10,2),
        allowNull: false
    },
    bookedBy: {
        type: DataTypes.STRING(255),
        allowNull: false
    },
    amendedBy: {
        type: DataTypes.STRING(255),
        allowNull: true
    },
    status: {
        type: DataTypes.ENUM('pending', 'confirmed', 'cancelled'),
        defaultValue: 'pending',
        allowNull: false
    },
    bookingType: {
        type: DataTypes.ENUM('regular', 'special'),
        defaultValue: 'regular',
        allowNull: false
    },
    createdAt: {
        type: DataTypes.DATE,
        defaultValue: DataTypes.NOW
    },
    updatedAt: {
        type: DataTypes.DATE,
        defaultValue: DataTypes.NOW,
        onUpdate: DataTypes.NOW
    }
}, {
    sequelize,
    modelName: 'Booking',
    tableName: 'gn_bookings',
    underscored: true
});

module.exports = Booking;
