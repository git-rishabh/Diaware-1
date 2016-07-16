'use strict';
angular.module('App')
.controller('MonitoringPreAssessmentController',['$scope','authorize','backendFactory','monitoringChartFactory', function($scope,authorize,backendFactory,monitoringChartFactory){
	if(!$scope.view || !$scope.assessment){
		console.log('executed');
		$scope.assessment = {
			preBasicId:null,
			preHDWeight:0,
			lastPostHDWeight:0,
			weightGain:0,
			dryWeight:0,
			targetWeightLoss:0,
			physicalChestPain:null,
			chestAuscultation:null,
			recentSurgery:null,
			peripheralOedema:null,
			respiratoryStatus:null,
			temperature:null,
			pulse:null,
			BPSitting:null,
			BPStanding:null,
			breakfastLunchDinner:null,
			subjectiveStatement:null,
			interdialyticComplaints:null,
			ambulatoryStatus:null,
			hypotension:null,
			headache:null,
			cramps:null,
			vomiting:null,
			fever:null,
			rigor:null,
			rash:null,
			chest:null,
			other:null,
			dyspnea:null,
			pruritus:null,
			generalComments:null,
			lastModifiedBy:null,
			new: true
		};
		console.log("hey" + ($scope.view?"true":"false"));
		if(!$scope.view){
			$scope.$watch('basic.patientId',function (newVal,oldval) {
				if(newVal){
					console.log("hey"+ ($scope.view?$scope.patientChart.patientId:$scope.basic.patientId));
					console.log("hey"+ ($scope.view?$scope.patientChart.monitoringDate:$scope.basic.monitoringDate));
					monitoringChartFactory.getPost($scope.basic.patientId)
					.query({
						secLastmonitoringDate:true,
						date:$scope.basic.monitoringDate
					},function(response){
							if(response.length == 0)$scope.assessment.lastPostHDWeight = 0; 
							else $scope.assessment.lastPostHDWeight = response[0].postWeight;
						},function(response){
							$scope.showalert_predialysis_assessment = true;
							$scope.message = " Error: " + response.status  + " " + response.statusText+"!";
						});
				}		
			});
		}
		else{
			$scope.$watch('patientChart.patientId',function (newVal,oldval) {
				if(newVal){
					console.log("hey"+ ($scope.view?$scope.patientChart.patientId:$scope.basic.patientId));
					console.log("hey"+ ($scope.view?$scope.patientChart.monitoringDate:$scope.basic.monitoringDate));
					monitoringChartFactory.getPost($scope.patientChart.patientId)
					.query({
						secLastmonitoringDate:true,
						date:$scope.patientChart.monitoringDate
					},function(response){
							if(response.length == 0)$scope.assessment.lastPostHDWeight = 0; 
							else $scope.assessment.lastPostHDWeight = response[0].postWeight;
						},function(response){
							$scope.showalert_predialysis_assessment = true;
							$scope.message = " Error: " + response.status  + " " + response.statusText+"!";
						});
				}		
			});	
		}
		
	}
	$scope.showalert_predialysis_assessment=false;

    $scope.$watch('assessment.preHDWeight',function(newVal1, oldval1){
		$scope.$watch('assessment.lastPostHDWeight',function(newVal2,oldval2){
			console.log(newVal1 +" " + newVal2);
			$scope.assessment.weightGain = newVal1-newVal2;
			if(!$scope.view)
				$scope.setPreHDWeight($scope.assessment.preHDWeight);
		});
		$scope.$watch('assessment.dryWeight',function(newVal3,oldval3){
			console.log(newVal1 + ' '+ newVal3);
			$scope.assessment.targetWeightLoss = newVal1 - newVal3;
		});
	});
	$scope.saveAssessment = function(){
		$scope.assessment.patientId = $scope.basic.patientId;
		$scope.assessment.preBasicId = $scope.basic.preBasicId;
		$scope.assessment.lastModifiedBy = authorize.getUsername();
		console.log($scope.assessment);
		monitoringChartFactory.getPreAssessments($scope.basic.patientId).save($scope.assessment)
		.$promise.then(function(response){
				$scope.showalert_predialysis_assessment=true;
				$scope.message="Saved Successfully!";
				$scope.messageColor = 'success';
			},function(response){
				$scope.showalert_predialysis_assessment=true;
				$scope.messageColor='danger';
				$scope.message="Error: "+response.status + " " +response.statusText + "!";
			});
	};
	$scope.updatePreAssessment = function(){
		$scope.updatedPreAssessment = true;
		$scope.assessment.lastModifiedBy = authorize.getUsername();
		if(!$scope.assessment.new){
			monitoringChartFactory.getPreAssessments($scope.patientChart.patientId).update({
				preBasicId:$scope.assessment.preBasicId
			},$scope.assessment)
			.$promise.then(function(response){
				console.log(response);
				$scope.updateParentValues(false,true,"Updated Successfully!",5);

			},function(response){
				$scope.updateParentValues(false,true,"Error: "+response.status + " " +response.statusText + "!",5);
			});	
		}else{
			$scope.assessment.patientId = $scope.patientChart.patientId;
			$scope.assessment.preBasicId = $scope.patientChart.preBasicId;
			console.log($scope.assessment);
			monitoringChartFactory.getPreAssessments($scope.patientChart.patientId).save($scope.assessment)
			.$promise.then(function(response){
				$scope.updateParentValues(false,true,"Updated Successfully!",5);
				
			},function(response){
				$scope.updateParentValues(false,true,"Error: "+response.status + " " +response.statusText + "!",5);
			});
		}
	};
}])
;