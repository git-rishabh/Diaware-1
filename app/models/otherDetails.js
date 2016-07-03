/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('otherDetails', {
    patientId: {
      type: DataTypes.STRING,
      allowNull: false,
      primaryKey: true
    },
    PAN: {
      type: DataTypes.STRING,
      allowNull: true
    },
    aadhar: {
      type: DataTypes.STRING,
      allowNull: true
    },
    passport: {
      type: DataTypes.STRING,
      allowNull: true
    },
    otherCard1: {
      type: DataTypes.STRING,
      allowNull: true
    },
    otherCard2: {
      type: DataTypes.STRING,
      allowNull: true
    },
    otherCard3: {
      type: DataTypes.STRING,
      allowNull: true
    },
    PANData: {
      type: 'BLOB',
      allowNull: true
    },
    aadharData: {
      type: 'BLOB',
      allowNull: true
    },
    passportData: {
      type: 'BLOB',
      allowNull: true
    },
    otherCard1Data: {
      type: 'BLOB',
      allowNull: true
    },
    otherCard2Data: {
      type: 'BLOB',
      allowNull: true
    },
    otherCard3Data: {
      type: 'BLOB',
      allowNull: true
    },
    lastModified: {
      type: DataTypes.DATE,
      allowNull: false,
      defaultValue: 'CURRENT_TIMESTAMP'
    },
    lastModifiedBy: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    tableName: 'otherDetails'
  });
};
