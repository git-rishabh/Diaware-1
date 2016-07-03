/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('monitoringChartPost', {
    patientId: {
      type: DataTypes.STRING,
      allowNull: false
    },
    monitoringId: {
      type: DataTypes.BIGINT,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    postWeight: {
      type: DataTypes.DECIMAL,
      allowNull: true
    },
    weightLoss: {
      type: DataTypes.DECIMAL,
      allowNull: true
    },
    UFReading: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    BPSitting: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    BPStanding: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    temperature: {
      type: DataTypes.DECIMAL,
      allowNull: true
    },
    pulse: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    symptomaticHypotension: {
      type: DataTypes.STRING,
      allowNull: true
    },
    prolongedBleeding: {
      type: DataTypes.STRING,
      allowNull: true
    },
    bruit: {
      type: DataTypes.STRING,
      allowNull: true
    },
    subjectiveStatement: {
      type: DataTypes.STRING,
      allowNull: true
    },
    cardiacStatus: {
      type: DataTypes.STRING,
      allowNull: true
    },
    respiratoryStatus: {
      type: DataTypes.STRING,
      allowNull: true
    },
    mentalStatus: {
      type: DataTypes.STRING,
      allowNull: true
    },
    ambulatoryStatus: {
      type: DataTypes.STRING,
      allowNull: true
    },
    KtVAchieved: {
      type: DataTypes.STRING,
      allowNull: true
    },
    EPODosage: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    EPOGivenBy: {
      type: DataTypes.STRING,
      allowNull: true
    },
    EPOSupply: {
      type: DataTypes.STRING,
      allowNull: true
    },
    bloodTransfusion: {
      type: DataTypes.STRING,
      allowNull: true
    },
    numberOfUnits: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    bloodBankName: {
      type: DataTypes.STRING,
      allowNull: true
    },
    concludedBy: {
      type: DataTypes.STRING,
      allowNull: true
    },
    anyOtherComments: {
      type: DataTypes.STRING,
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
    tableName: 'monitoringChartPost'
  });
};