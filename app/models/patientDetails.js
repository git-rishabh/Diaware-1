/* jshint indent: 2 */
var Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('patientDetails', {
    id: {
      type: DataTypes.STRING,
      allowNull: false,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: true
    },
    age: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    DOB: {
      type: Sequelize.DATE,
      allowNull: true,
      validate:{
        // isDate:true,
        // isBefore: Sequelize.NOW()
      }
    },
    gender: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        isIn:[['','Male','Female']]
      }
    },
    type:{
      type:DataTypes.STRING,
      allowNull:true ,
      validate:{
        isIn:[['','Negative', 'BPositive','CPositive','HIV']]
      }
    },
    contact: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        len:[10,15],
        isNumeric:true
      }
    },
    alternativeContact: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        len:[10,15],
        isNumeric:true
      }
    },
    location: {
      type: DataTypes.STRING,
      allowNull: true
    },
    address: {
      type: DataTypes.STRING,
      allowNull: true
    },
    bloodGroup: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        isIn:[['','B-','B+','A+','A-', 'O+', 'O-','AB+','AB-']]
      }
    },
    transplantWaitingList: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        isIn:[['','Yes', 'No']]
      }
    },
    maritalStatus: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        isIn:[['','married','unmarried']]
      }
    },
    emergencyContactName: {
      type: DataTypes.STRING,
      allowNull: true
    },
    emergencyContactRelationship: {
      type: DataTypes.STRING,
      allowNull: true
    },
    emergencyContactMobile: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        len:[10,15],
        isNumeric:true
      }
    },
    hasChildren:{
      type:DataTypes.STRING,
      allowNull:true,
      validate:{
        isIn:[['','Yes','No']]
      }
    },
    numberOfChildren: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    childrenContact: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        len:[10,15],
        isNumeric:true
      }
    },
    employementStatus: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        isIn:[['','salaried','businessman','professional','farmer','unemployed','other']],
        isblank:function(value){
          if (value === "")
            this.employementStatus = null;
        }
      }
    },
    officeName: {
      type: DataTypes.STRING,
      allowNull: true
    },
    officeAddress: {
      type: DataTypes.STRING,
      allowNull: true
    },
    otherClinicalDetails: {
      type: DataTypes.STRING,
      allowNull: true
    },
    modeOfPayment: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        isIn:[['','Cash','Panel']]
      }
    },
    referredBy: {
      type: DataTypes.STRING,
      allowNull: true
    },
    doctorName: {
      type: DataTypes.STRING,
      allowNull: true
    },
    viralMarkerStatus: {
      type: DataTypes.STRING,
      allowNull: true,
      validate:{
        isIn:[['','Yes', 'No']]
      }
    },
    lastModifiedBy: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    tableName: 'patientDetails'
  });
};
