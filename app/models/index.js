"use strict";

var fs        = require("fs");
var path      = require("path");

var env       = process.env.NODE_ENV || "development";
var db = require('../../config/sequelize');
//var config    = require(path.join(__dirname, '..', 'config', 'config.json'))[env];
var sequelize = db.sequelize;
var Sequelize = db.Sequelize;


var dbmodel = {};

fs
  .readdirSync(__dirname)
  .filter(function(file) {
    return (file.indexOf(".") !== 0) && (file !== "index.js");
  })
  .forEach(function(file) {
    var model = sequelize.import(path.join(__dirname, file));
    dbmodel[model.name] = model;
  });

Object.keys(dbmodel).forEach(function(modelName) {
  if ("associate" in dbmodel[modelName]) {
    dbmodel[modelName].associate(dbmodel);
  }
});

dbmodel.sequelize = db.sequelize;
dbmodel.Sequelize = db.Sequelize;
//relations between bill and patient
dbmodel.patientDetails.hasMany(dbmodel.bills,{foreignKey:'patientId'});
dbmodel.bills.belongsTo(dbmodel.patientDetails, {foreignKey: 'patientId'});
//relation between centre and patients - one centre has many patients
dbmodel.centres.hasMany(dbmodel.patientDetails,{foreignKey:'centreId'});
dbmodel.patientDetails.belongsTo(dbmodel.centres,{foreignKey:'centreId'});


/* 
   can store older panelDetails and OtherDetails in which case it would be 
   1-n relations b/w patientDetails n paneldetails ; patientDetails n otherDetails
*/
//relation between panels and panelDetails - #a single panel has many patients# 
dbmodel.panels.hasMany(dbmodel.panelDetails,{foreignKey:'panelId'});
dbmodel.panelDetails.belongsTo(dbmodel.panels,{foreignKey:'panelId'});
//and each patient has exactly one panelDetail
dbmodel.patientDetails.hasOne(dbmodel.panelDetails,{foreignKey:'patientId'});
dbmodel.panelDetails.belongsTo(dbmodel.patientDetails,{foreignKey:'patientId'});

//relation between patient and otherDetails
dbmodel.patientDetails.hasOne(dbmodel.otherDetails,{foreignKey:'patientId'});
dbmodel.otherDetails.belongsTo(dbmodel.patientDetails,{foreignKey:'patientId'});



//relation between patient and his medical history
dbmodel.patientDetails.hasMany(dbmodel.medicalHistory,{foreignKey:'patientId'});
dbmodel.medicalHistory.belongsTo(dbmodel.patientDetails,{foreignKey:'patientId'});

//relation between patient and clinical events
dbmodel.patientDetails.hasMany(dbmodel.majorClinicalEvents,{foreignKey:'patientId'});
dbmodel.majorClinicalEvents.belongsTo(dbmodel.patientDetails,{foreignKey:'patientId'});


dbmodel.dialysisCarePlan.belongsTo(dbmodel.patientDetails,{foreignKey:'patientId'});
dbmodel.patientDetails.hasMany(dbmodel.dialysisCarePlan,{foreignKey:'patientId'});

dbmodel.patientDetails.hasMany(dbmodel.monitoringChartPreBasic,{foreignKey:'patientId'});
dbmodel.monitoringChartPreBasic.belongsTo(dbmodel.patientDetails,{foreignKey:'patientId'});

dbmodel.monitoringChartPreBasic.hasOne(dbmodel.monitoringChartPreBasicMedical,{foreignKey:'preBasicId'});
dbmodel.monitoringChartPreBasic.hasOne(dbmodel.monitoringChartPreMachineFinalCheck,{foreignKey:'preBasicId'});
dbmodel.monitoringChartPreBasic.hasOne(dbmodel.monitoringChartPreAssessment,{foreignKey:'preBasicId'});
dbmodel.monitoringChartPreBasic.hasOne(dbmodel.monitoringChartPreAccessAssessment,{foreignKey:'preBasicId'});
dbmodel.monitoringChartPreBasic.hasOne(dbmodel.monitoringChartIntra,{foreignKey:'intraId'});
dbmodel.monitoringChartPreBasic.hasOne(dbmodel.monitoringChartPost,{foreignKey:'postId'});
//add the other half - not needed :P

dbmodel.shifts.hasOne(dbmodel.weekDaySlots,{as:'shift1',foreignKey:'shift1Id'});
dbmodel.shifts.hasOne(dbmodel.weekDaySlots,{as:'shift2',foreignKey:'shift2Id'});
dbmodel.shifts.hasOne(dbmodel.weekDaySlots,{as:'shift3',foreignKey:'shift3Id'});
dbmodel.shifts.hasOne(dbmodel.weekDaySlots,{as:'shift4',foreignKey:'shift4Id'});
dbmodel.shifts.hasOne(dbmodel.weekDaySlots,{as:'shift5',foreignKey:'shift5Id'});
dbmodel.shifts.hasOne(dbmodel.weekDaySlots,{as:'shift6',foreignKey:'shift6Id'});

dbmodel.weekDaySlots.belongsTo(dbmodel.shifts,{as:'shift1',foreignKey:'shift1Id'});
dbmodel.weekDaySlots.belongsTo(dbmodel.shifts,{as:'shift2',foreignKey:'shift2Id'});
dbmodel.weekDaySlots.belongsTo(dbmodel.shifts,{as:'shift3',foreignKey:'shift3Id'});
dbmodel.weekDaySlots.belongsTo(dbmodel.shifts,{as:'shift4',foreignKey:'shift4Id'});
dbmodel.weekDaySlots.belongsTo(dbmodel.shifts,{as:'shift5',foreignKey:'shift5Id'});
dbmodel.weekDaySlots.belongsTo(dbmodel.shifts,{as:'shift6',foreignKey:'shift6Id'});

dbmodel.shiftPatients.hasMany(dbmodel.futureAppointments,{foreignKey:'shiftPatientsId'});
dbmodel.futureAppointments.belongsTo(dbmodel.shiftPatients,{foreignKey:'shiftPatientsId'});

dbmodel.shiftPatients.hasMany(dbmodel.attendedAppointments,{foreignKey:'shiftPatientsId'});
dbmodel.attendedAppointments.belongsTo(dbmodel.shiftPatients,{foreignKey:'shiftPatientsId'});

// dbmodel.shiftPatients.belongsTo()

dbmodel.patientDetails.hasMany(dbmodel.futureAppointments,{foreignKey:'patientId'});
dbmodel.futureAppointments.belongsTo(dbmodel.patientDetails,{foreignKey:'patientId'});
dbmodel.patientDetails.hasMany(dbmodel.attendedAppointments,{foreignKey:'patientId'});
dbmodel.futureAppointments.belongsTo(dbmodel.patientDetails,{foreignKey:'patientId'});

module.exports = dbmodel;