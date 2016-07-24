-- drop database diaware;
-- create database diaware;
use diaware;
insert into centres (id, name,location,maxPatients,accessLinesAvailable, patientCount,noOfShiftsPerDay,OPDTotalNegativeMachines,createdAt,updatedAt) values('JP1',"Apex Jaipur","malviya nagar",50,"femoral,fistoral,IJ,central",2,3,10,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into patientDetails (id,name,contact,lastModifiedBy,centreId,createdAt,updatedAt) values("JP1-2016-1","adesh","987654321","aish", "JP1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
-- insert into bills(transactionId,status,amount,lastModifiedBy,patientId,createdAt,updatedAt) values(1,"Paid",26.89,"aish","JP1-2016-1",'2016-07-13 10:48:56','2016-07-13 10:48:56');
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

insert into transactionTypes(transactionType,createdAt,updatedAt) value ("dialysis",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into transactionTypes(transactionType,createdAt,updatedAt) value ("pharmacy",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into transactionTypes(transactionType,createdAt,updatedAt) value ("consumable",'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into transactionTypes(transactionType,createdAt,updatedAt) value ("procedure",'2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('pharmacy','pharmacytype1',200.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('pharmacy','pharmacytype2',300.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('pharmacy','pharmacytype3',100.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('dialysis','dialysistype1',4400.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('dialysis','dialysistype2',2200.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('dialysis','dialysistype3',1290.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('consumable','consumabletype1',110.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('consumable','consumabletype2',40.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('consumable','consumabletype3',140.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('procedure','proceduretype1',2340.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('procedure','proceduretype3',4500.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into ledgerTable(ledgerType,ledgerName,cost,createdAt,updatedAt) values('procedure','proceduretype2',11200.00,'2016-07-13 10:48:56','2016-07-13 10:48:56');

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

insert into diseases(diseaseName,createdAt,updatedAt) values('diabetes','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('hypertension','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('coronaryArteryDisease','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('peripheralNeuropathy','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('ratinopathy/Vision','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('cerebrovascularDisease','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('respiratoryDisease','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('malignancy','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('haemoglobiNopathy','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('peripheralVascularDisease','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('hepatitisB','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('hepatitisC','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('HIV','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('malnutrition','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into diseases(diseaseName,createdAt,updatedAt) values('drugAllergy','2016-07-13 10:48:56','2016-07-13 10:48:56');


INSERT INTO `users` (`id`,`username`,`hashedPassword`,`centres`,`admin`,`incharge`,`manager`,`clinical`,`createdAt`,`updatedAt`) VALUES (DEFAULT,'admin','21232f297a57a5a743894a0e4a801fc3','JP1,CH',true,false,true,false,'2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into vendor(vendorId ,vendorName,vendorAddress, vendorTINNumber,vendorContactPerson,vendorContactPersonNumber,vendorIntroducedBy,vendorIntroducedByName,createdAt,updatedAt) values(DEFAULT, 'kr dispensaries','jaipur',99999,'aishhwarrya',1234567892,'Staff','rishabh','2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into vendor(vendorId ,vendorName,vendorAddress, vendorTINNumber,vendorContactPerson,vendorContactPersonNumber,vendorIntroducedBy,vendorIntroducedByName,createdAt,updatedAt) values(DEFAULT, 'corporate office','delhi',99999,'mayank',1234567892,'Staff','rishabh','2016-07-13 10:48:56','2016-07-13 10:48:56');


insert into item(itemId,itemName,usageType,brandName,quantityMeasurementType,createdAt,updatedAt) values (DEFAULT, 'savlon','General Stock','dettol','bottles','2016-07-13 10:48:56','2016-07-13 10:48:56');
	
insert into item(itemId,itemName,usageType,brandName,quantityMeasurementType,createdAt,updatedAt) values (DEFAULT, 'savlon','Treatment Specific','dettol','bottles','2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into item(itemId,itemName,usageType,brandName,quantityMeasurementType,createdAt,updatedAt) values (DEFAULT, 'savlon','General Stock','dettol','bottles','2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into item(itemId,itemName,usageType,brandName,quantityMeasurementType,createdAt,updatedAt) values (DEFAULT, 'handwash','Emergency Stock','lifebuoy','bottles','2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into indent (centreId,indentId,requestDate,requiredByDate,stockOrderTo,status,createdAt,updatedAt) values('JP1',DEFAULT,'2016-07-13 10:48:56','2016-07-13 10:48:56','Me','Raised','2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into indentItems(indentId, itemId, linkedStatus,quantityRequired, availableQuantity, createdAt, updatedAt) values (1,1,'Raised',4,2,'2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into stock(centreId, itemId, availableQuantity, createdAt, updatedAt) values('JP1',1,8,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into stock(centreId, itemId, availableQuantity, createdAt, updatedAt) values('JP1',2,4,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into stock(centreId, itemId, availableQuantity, createdAt, updatedAt) values('JP1',3,6,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into stock(centreId, itemId, availableQuantity, createdAt, updatedAt) values('JP1',4,0,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into stock(centreId, itemId, availableQuantity, createdAt, updatedAt) values('CH',1,0,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into stock(centreId, itemId, availableQuantity, createdAt, updatedAt) values('CH',2,5,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into stock(centreId, itemId, availableQuantity, createdAt, updatedAt) values('CH',3,2,'2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into stock(centreId, itemId, availableQuantity, createdAt, updatedAt) values('CH',4,15,'2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into stockIssued(centreId,stockIssuedId,stockIssuedTo,estimatedSingleUse,estimatedReUse,estimatedNewDialyzer,estimatedCatheterSingleLumen,estimatedCatheterDoubleLumen,stockIssueDate,stockTakerName,nextExpectedStockIssueDate,createdAt, updatedAt) values ('JP1',1,'floor',1,2,3,4,5,'2016-07-13 10:48:56','adesh','2016-07-13 10:48:56','2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into stockIssuedItems(stockIssuedId,itemId,quantity,createdAt, updatedAt) values(1,1,4,'2016-07-13 10:48:56','2016-07-13 10:48:56');


insert into consumption(centreId,treatementType,treatementId,createdAt, updatedAt) values ('JP1','Single Use',25366,'2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into consumptionItems(treatementId,itemId,quantity,createdAt,updatedAt) values (25366,1,2,'2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into dialysisItems(itemName,createdAt,updatedAt) values('Dialyzer','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Blood Tubing','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Fistula Needle','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('IV Set','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Sterile Gloves','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Normal Saline 1000 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Normal Saline 500 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Syringe 10 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Syringe 20 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Syringe 1 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Heparin','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Dialysis on/off kit','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Gauze pieces','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Transducer Protector','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Part A','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Part B','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into dialysisItems(itemName,createdAt,updatedAt) values('Unsterile Gloves','2016-07-13 10:48:56','2016-07-13 10:48:56');

insert into catheterizationItems(itemName,createdAt,updatedAt) values('Double Lumen Catheter','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Single Lumen Catheter','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Guide wire','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Introducer needle ','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Sterile Gloves','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Syringe 5 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Syringe 10 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Syringe 20 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Syringe 1 ml','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Heparin','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Dialysis on/off kit','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Gauze pieces','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Unsterile Gloves','2016-07-13 10:48:56','2016-07-13 10:48:56');
insert into catheterizationItems(itemName,createdAt,updatedAt) values('Disposable Appron','2016-07-13 10:48:56','2016-07-13 10:48:56');



-- steps to create an event scheduler:
-- (http://www.mysqltutorial.org/mysql-triggers/working-mysql-scheduled-event/ )
-- 1.SHOW PROCESSLIST;
-- 2.SET GLOBAL event_scheduler = ON;
-- 3.SHOW PROCESSLIST;
-- 4.use diaware;
-- 5:
	-- CREATE EVENT addNextWeeksAppointments   
	-- ON SCHEDULE EVERY 1 DAY 
	-- STARTS '2016-07-22 01:46:00' ON COMPLETION PRESERVE ENABLE 
	-- DO INSERT INTO futureAppointments (centreId, shiftPatientsId,date,dayOfTheWeek,patientId,shiftNumber)	SELECT  P.centreId as centreId, S.id as shiftPatientsId, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 7 DAY) as date, S.day  as dayOfTheWeek, S.patientId as patientId, S.shiftNumber as shiftNumber  FROM    shiftPatients as S join patientDetails as P 	WHERE S.patientId = P.id  and S.day = (select DAYNAME(DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 7 DAY)));



-- ignore below this
-- CREATE EVENT addNextWeeksAppointments   
-- ON SCHEDULE EVERY 1 DAY 
-- STARTS '2016-07-22 01:43:00' ON COMPLETION PRESERVE ENABLE 
-- DO insert into ledgerTable(ledgerType,ledgerName,cost) values('a','a',1)


-- CREATE EVENT addNextWeeksAppointments    ON SCHEDULE AT CURRENT_TIMESTAMP DO INSERT INTO ledgerTable(ledgerType, ledgerName, cost) values("aish","aish",4000);

-- CREATE EVENT `event_name` 
-- ON SCHEDULE schedule
-- [ON COMPLETION [NOT] PRESERVE] 
-- [ENABLE | DISABLE | DISABLE ON SLAVE]
-- DO BEGIN
-- 	-- event body
-- END;
