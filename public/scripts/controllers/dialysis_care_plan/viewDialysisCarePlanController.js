'use strict';
angular.module('App')
.controller('ViewDialysisCarePlanController',['$scope','patientFactory','choosePatientFactory', 'authorize', function($scope,patientFactory,choosePatientFactory,authorize){
	
	patientFactory.getPatients(authorize.getCentre()).get({id:choosePatientFactory.getChosenPatient().id}).$promise.then(function(response){
        	$scope.patient = response;
        });
		

}])
;