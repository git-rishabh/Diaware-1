'use strict';
angular.module('App')
.controller('MedicalController',['$scope','patientFactory','authorize','backendFactory', function($scope,patientFactory,authorize,backendFactory){
    var diseases = [];
	if(!$scope.view){
		$scope.newPatient_Medical = [];
		console.log('yoooo hooooooooo');
		backendFactory.getDiseases().query(function(response){
			diseases = response;
 			for(var i = 0; i < diseases.length;i++){
 				var medicalHistory= {
 					patientId:null,
 					diseaseName:diseases[i].diseaseName,
 					diseasePresent:null,
 					doctorComments:null,
 					lastModifiedBy:null
 				};
 				$scope.newPatient_Medical.push(medicalHistory);
 			}
 		});	
		$scope.others = [];
	}
	$scope.showalert_medical=false;
	
	$scope.other = {
		patientId:null,
		diseaseName:null,
		diseasePresent:"Yes",
		doctorComments:null,
		lastModifiedBy:null,
		new:true
	};
	$scope.addOthers = function(){
		$scope.showalert_medical=false;

		$scope.other.patientId = $scope.view?$scope.patient.id:$scope.newpatient_basic.id;
		$scope.other.lastModifiedBy = authorize.getUsername();
		$scope.newPatient_Medical.push($scope.other);
		$scope.other = {
			patientId:$scope.newpatient_basic,
			diseaseName:null,
			diseasePresent:"Yes",
			doctorComments:null,
			lastModifiedBy:null,
			new:true
		};
		$scope.otherForm.$setPristine();
	}
	$scope.saveMedical = function(){
		$scope.showalert_medical=false;
		for(var i = 0; i< $scope.newPatient_Medical.length;i++){
			$scope.newPatient_Medical[i].patientId = $scope.newpatient_basic.id;
			$scope.newPatient_Medical[i].lastModifiedBy = authorize.getUsername();
			console.log($scope.newPatient_Medical[i]);
			patientFactory.getPatientMedicalHistory($scope.newPatient_Medical[i].patientId,authorize.getCentre())
			.save($scope.newPatient_Medical[i]).$promise
			.then(function(response){
				$scope.message = "Details Saved Successfully!";
				$scope.messageColor = 'success';
			},function(response){
				$scope.message = "Error: " + response.status + " " + response.statusText;
				$scope.messageColor = 'danger';
				console.log(response);
			});
			$scope.showalert_medical = true;
		}
	};
	$scope.updateMedical = function(){
		$scope.showalert_medical=false;
		for(var i = 0; i< $scope.newPatient_Medical.length;i++){
			if($scope.newPatient_Medical[i].new)
				$scope.newPatient_Medical[i].patientId = $scope.patient.id;
			$scope.newPatient_Medical[i].lastModifiedBy = authorize.getUsername();
			console.log($scope.newPatient_Medical[i]);
			if($scope.newPatient_Medical[i].new){
				patientFactory.getPatientMedicalHistory($scope.newPatient_Medical[i].patientId,authorize.getCentre())
				.save($scope.newPatient_Medical[i]).$promise
				.then(function(response){
					$scope.message = "Details Saved Successfully!";
					$scope.messageColor = 'success';
				},function(response){
					$scope.message = "Error: " + response.status + " " + response.statusText;
					$scope.messageColor = 'danger';
					console.log(response);
				});	
			}
			else{
				patientFactory.getPatientMedicalHistory($scope.newPatient_Medical[i].patientId,authorize.getCentre())
				.update({diseaseName:$scope.newPatient_Medical[i].diseaseName},$scope.newPatient_Medical[i]).$promise
				.then(function(response){
					$scope.message = "Details Saved Successfully!";
					$scope.messageColor = 'success';
				},function(response){
					$scope.message = "Error: " + response.status + " " + response.statusText;
					$scope.messageColor = 'danger';
					console.log(response);
				});
			}
			$scope.showalert_medical = true;
			$scope.updateMyValuesFromMedical(false, $scope.showalert_medical,$scope.message);
		};

	};
	$scope.regularForm =function(str){
		return str.replace(/([A-Z])/g, ' $1').replace(/[^.]/, function(str){ return str.toUpperCase(); });
	};
	


}])
;