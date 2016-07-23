/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('indentItems', {
    indentId: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      defaultValue: '0',
      primaryKey: true
    },
    itemId: {
      type: DataTypes.BIGINT,
      allowNull: false,
      defaultValue: '0',
      primaryKey: true
    },
    linkedStatus: {
      type: DataTypes.STRING,
      allowNull: true
    },
    quantityRequired: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    availabilityQuantity: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    lastModifiedBy: {
      type: DataTypes.STRING,
      allowNull: true
    }
  }, {
    tableName: 'indentItems'
  });
};
