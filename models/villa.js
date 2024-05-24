const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');

class Villa extends Model {}

Villa.init({
    uuid: {
        type: DataTypes.STRING(36),
        primaryKey: true,
        unique: true,
        allowNull: false
    },
    websiteId: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    legacyId: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    name: {
        type: DataTypes.STRING(255),
        allowNull: false
    },
    description: {
        type: DataTypes.STRING(3000),
        allowNull: true
    },
    resort: {
        type: DataTypes.STRING(255),
        allowNull: true
    },
    capacityAdults: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    capacityChildren: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    price: {
        type: DataTypes.DECIMAL(10,2),
        allowNull: false
    },
    owner: {
        type: DataTypes.STRING(255),
        allowNull: false
    },
    createdBy: {
        type: DataTypes.STRING(255),
        allowNull: false
    },
    amendedBy: {
        type: DataTypes.STRING(255),
        allowNull: true
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
    modelName: 'Villa',
    tableName: 'gn_villas',
    underscored: true
});

module.exports = Villa;
