'use strict';
angular.module('App')
	.service('backendFactory', ['$resource', 'baseURL', function($resource,baseURL) {
		this.getCentres = function(){
      		return $resource(baseURL+"centres/:id",null,  {'update':{method:'PUT' }});
     	};
     	this.getPanels = function(){
     		return $resource(baseURL+"panels/:panelId", null,{'update':{method:'PUT'}});
     	};
     	this.getDialyzateTypes = function(){
     		return $resource(baseURL+"dropDowns/dialyzateTypes/:dialyzateType", null,{'update':{method:'PUT'}});
     	};
     	this.getTransactionTypes = function(){
     		return $resource(baseURL+"dropDowns/transactionTypes/:transactionType", null,{'update':{method:'PUT'}});
     	};
        this.getLedgers = function(){
            return $resource(baseURL+"dropDowns/ledgers/:ledgerType", null,{'update':{method:'PUT'}});
        };  
        this.getDiseases = function(){
            return $resource(baseURL+"dropDowns/diseases/:diseaseName", null,{'update':{method:'PUT'}});
        };
        this.getCatheterizationItems = function(){
            return $resource(baseURL+"dropDowns/catheterizationItems/:itemId", null,{'update':{method:'PUT'}});
        };
        this.getDialysisItems = function(){
            return $resource(baseURL+"dropDowns/dialysisItems/:itemId", null,{'update':{method:'PUT'}});
        };

        this.getRespiratoryStatus = function(){
            return $resource(baseURL+"dropDowns/respiratoryStatus/:respiratoryStatus", null,{'update':{method:'PUT'}});
        };

  }])
;
/*
       // this.getDialysisTypes = function(){
        //     return $resource(baseURL+"dropDowns/dialysisTypes/:dialysisType", null,{'update':{method:'PUT'}});
        // };
        // this.getConsumableTypes = function(){
        //     return $resource(baseURL+"dropDowns/consumableTypes/:consumableType", null,{'update':{method:'PUT'}});
        // };
        // this.getProcedureTypes = function(){
        //     return $resource(baseURL+"dropDowns/procedureTypes/:procedureType", null,{'update':{method:'PUT'}});
        // };
        // this.getPharmacyTypes = function(){
        //     return $resource(baseURL+"dropDowns/pharmacyTypes/:pharmacyType", null,{'update':{method:'PUT'}});
        // };
,function(rejectedPromiseError){
        res.status(500);
        res.end("Internal Server Error");
    }
*/