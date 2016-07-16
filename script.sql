-- drop database diaware;
-- create database diaware;
use diaware;
insert into centres (id, name,location,maxPatients,accessLinesAvailable, patientCount,noOfShiftsPerDay,OPDTotalNegativeMachines,createdAt,updatedAt) values('JP1',"Apex Jaipur","malviya nagar",50,"femoral,fistoral,IJ,central",2,3,10,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into patientDetails (id,name,contact,lastModifiedBy,centreId,createdAt,updatedAt) values("JP1-2016-1","adesh","987654321","aish", "JP1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into bills(transactionId,status,amount,lastModifiedBy,patientId,createdAt,updatedAt) values(1,"Paid",26.89,"aish","JP1-2016-1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into centres( id, name,location,maxPatients,accessLinesAvailable, patientCount,noOfShiftsPerDay,OPDTotalNegativeMachines,createdAt,updatedAt) values("CH","chandigarh","chandigarh",50,"femoral,fistoral,IJ",1,4,15,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into panels (id, name, details,createdAt,updatedAt) values(1,"cghs","govt",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into panels (id, name, details,createdAt,updatedAt) values(2,"bahmas","govt",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into panels (id, name, details,createdAt,updatedAt) values(3,"xxx","govt",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into panelDetails(patientId,panelId,panelPermissionNumber,lastModifiedBy,createdAt,updatedAt) values("JP1-2016-1",1,284883,"aish",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into medicalHistory(patientId,diseaseName,diseasePresent,lastModifiedBy,createdAt,updatedAt) values("JP1-2016-1","xxx","Yes","aish",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into otherDetails(patientId,PAN,	aadhar,lastModifiedBy,createdAt,updatedAt) values("JP1-2016-1","JP3382893","JP-29282HJ2","aish",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into majorClinicalEvents(patientId, lastModifiedBy, details,createdAt,updatedAt) values('JP1-2016-1',"aish","a",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialyzateTypes(dialyzateType,createdAt,updatedAt) value ("dialyzatetype1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialyzateTypes(dialyzateType,createdAt,updatedAt) value ("dialyzatetype2",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialyzateTypes(dialyzateType,createdAt,updatedAt) value ("dialyzatetype3",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisTypes(dialysisType,createdAt,updatedAt) value ("dialysistype1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisTypes(dialysisType,createdAt,updatedAt) value ("dialysistype2",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisTypes(dialysisType,createdAt,updatedAt) value ("dialysistype3",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into transactionTypes(transactionType,createdAt,updatedAt) value ("Dialysis",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into transactionTypes(transactionType,createdAt,updatedAt) value ("Pharmacy",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into transactionTypes(transactionType,createdAt,updatedAt) value ("Consumable",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into transactionTypes(transactionType,createdAt,updatedAt) value ("Procedure",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into pharmacyTypes(pharmacyType,createdAt,updatedAt) value ("pharmacytype1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into pharmacyTypes(pharmacyType,createdAt,updatedAt) value ("pharmacytype2",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into pharmacyTypes(pharmacyType,createdAt,updatedAt) value ("pharmacytype3",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into procedureTypes(procedureType,createdAt,updatedAt) value ("proceduretype1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into procedureTypes(procedureType,createdAt,updatedAt) value ("proceduretype2",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into procedureTypes(procedureType,createdAt,updatedAt) value ("proceduretype3",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into consumableTypes(consumableType,createdAt,updatedAt) value ("consumabletype1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into consumableTypes(consumableType,createdAt,updatedAt) value ("consumabletype2",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into consumableTypes(consumableType,createdAt,updatedAt) value ("consumabletype3",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into monitoringChartPreBasic(patientId,monitoringDate,machineNumber,bedNumber,lastModifiedBy,createdAt,updatedAt) values("JP1-2016-1", "2016-07-14",1,1,"aish",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into monitoringChartPreBasicMedical(preBasicId,patientId,dialyzerName,dialyzerType,accessUsed,lastModifiedBy,createdAt,updatedAt) values(1,"JP1-2016-1", "xxx","type1","femoral","aish",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into monitoringChartPreMachineFinalCheck(preBasicId,patientId,machineNumber,machineTestPassed,lastModifiedBy,createdAt,updatedAt) values(1, "JP1-2016-1",1,"Yes","aish",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into monitoringChartPreAssessment(preBasicId,patientId,preHDWeight,lastPostHDWeight,dryWeight,physicalChestPain,lastModifiedBy,createdAt,updatedAt) values(1,"JP1-2016-1", 45.5,40.2,40,"Yes","aish",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into monitoringChartPreAccessAssessment(preBasicId,patientId,bruit,anyAbnormality,commencedBy,assistedBy,lastModifiedBy,createdAt,updatedAt) values(1, "JP1-2016-1","Good","No","adesh","Rishabh","aish",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("1",6,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("2",2,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("3",4,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("4",5,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("5",3,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("6",3,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("7",2,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("8",4,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("9",5,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("10",6,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("11",6,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("12",0,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("13",0,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("14",6,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("15",6,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("16",6,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("17",6,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("18",0,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("19",0,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("20",0,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into shifts(id,OPDAvailableNegativeMachines,createdAt,updatedAt) values("21",0,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into weekDaySlots(centreId,dayOfTheWeek,shift1Id,shift2Id,shift3Id,createdAt,updatedAt) values('JP1',"Monday","1",'2','3','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into weekDaySlots(centreId,dayOfTheWeek,shift1Id,shift2Id,shift3Id,createdAt,updatedAt) values('JP1',"Tuesday","4",'5','6','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into weekDaySlots(centreId,dayOfTheWeek,shift1Id,shift2Id,shift3Id,createdAt,updatedAt) values('JP1',"Wednesday","7",'8','9','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into weekDaySlots(centreId,dayOfTheWeek,shift1Id,shift2Id,shift3Id,createdAt,updatedAt) values('JP1',"Thursday","10",'11','12','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into weekDaySlots(centreId,dayOfTheWeek,shift1Id,shift2Id,shift3Id,createdAt,updatedAt) values('JP1',"Friday","13",'14','15','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into weekDaySlots(centreId,dayOfTheWeek,shift1Id,shift2Id,shift3Id,createdAt,updatedAt) values('JP1',"Saturday","18",'17','16','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into weekDaySlots(centreId,dayOfTheWeek,shift1Id,shift2Id,shift3Id,createdAt,updatedAt) values('JP1',"Sunday","19",'20','21','2016-07-13 10:48:56','2016-07-13 10:48:56');

-- CREATE EVENT addNextWeeksAppointments
--   ON SCHEDULE
--     EVERY 1 DAY
--     STARTS '2016-07-14 01:10:00' ON COMPLETION PRESERVE ENABLE 
--   DO
--     INSERT INTO futureAppointments (centreId, shiftPatientsId,date,dayOfTheWeek,patientId,shiftNumber)
--     -- OUTPUT inserted.Id, inserted.ColumnA, inserted.ColumnB
--     SELECT  S.id as shiftPatientsId, S.patientId as patientId, P.centreId as centreId, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 7 DAY) as date, S.dayOfTheWeek  as dayOfTheWeek, S.shiftNumber as shiftNumber
--     FROM    shiftPatients as S join patientDetails as P 
--     WHERE S.patientId == P.id and S.dayOfTheWeek == DAYNAME(DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 7 DAY),'2016-07-13 10:48:56','2016-07-13 10:48:56');


insert into diseases(diseaseName) values('diabetes');
insert into diseases(diseaseName) values('hypertension');
insert into diseases(diseaseName) values('coronaryArteryDisease');
insert into diseases(diseaseName) values('peripheralNeuropathy');
insert into diseases(diseaseName) values('ratinopathy/Vision');
insert into diseases(diseaseName) values('cerebrovascularDisease');
insert into diseases(diseaseName) values('respiratoryDisease');
insert into diseases(diseaseName) values('malignancy');
insert into diseases(diseaseName) values('haemoglobiNopathy');
insert into diseases(diseaseName) values('peripheralVascularDisease');
insert into diseases(diseaseName) values('hepatitisB');
insert into diseases(diseaseName) values('hepatitisC');
insert into diseases(diseaseName) values('HIV');
insert into diseases(diseaseName) values('malnutrition');
insert into diseases(diseaseName) values('drugAllergy');


INSERT INTO `users` (`id`,`username`,`hashedPassword`,`centres`,`admin`,`incharge`,`manager`,`clinical`,`createdAt`,`updatedAt`) VALUES (DEFAULT,'admin','21232f297a57a5a743894a0e4a801fc3','JP1,CH',true,false,true,false,'2016-07-13 10:48:56','2016-07-13 10:48:56');
