'use strict';
angular.module('App')
.controller('ViewMonitoringController',['$scope','patientFactory','choosePatientFactory','monitoringChartFactory','authorize', function($scope, patientFactory, choosePatientFactory,monitoringChartFactory,authorize){
      // monitoringChartFactory.getPreBasic(choosePatientFactory.getChosenPatient().id).get()
	   monitoringChartFactory.getPreBasic(choosePatientFactory.getChosenPatient().id).get({fullChartLatest:true}).$promise.then(function(response){
        	$scope.patientChart = response;
        });
		
		 // patientFactory.getPatients(authorize.getCentre()).get({id:choosePatientFactory.getChosenPatient().id}).$promise.then(function(response){
   //      	$scope.patient =response;
   //      });
		
	   // patientFactory.getPatients(authorize.getCentre()).get({id:choosePatientFactory.getChosenPatient().id}).$promise.then(function(response){
        //	$scope.patient = response;
        //});
		
	//	$scope.edit_basic_details = function(){
		//	state.go("app.registration.new");
		//};
    }])
;