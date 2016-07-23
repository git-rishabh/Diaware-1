/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('stock', {
    centreId: {
      type: DataTypes.STRING,
      allowNull: false
    },
    itemId: {
      type: DataTypes.BIGINT,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    itemName: {
      type: DataTypes.STRING,
      allowNull: true
    },
    usageType: {
      type: DataTypes.STRING,
      allowNull: true
    },
    brandName: {
      type: DataTypes.STRING,
      allowNull: true
    },
    availabilityQuantity: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    quantityType: {
      type: DataTypes.STRING,
      allowNull: true
    }
  }, {
    tableName: 'stock'
  });
};