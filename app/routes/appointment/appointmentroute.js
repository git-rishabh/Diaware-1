var express = require('express');
var bodyParser = require('body-parser');

var db = require('../../models');
// var verify = require('../verify');

var appointmentRouter = express.Router({mergeParams:true});
appointmentRouter.use(bodyParser.json());
//db.patientDetails.create({patientId: '12345', name: 'heya', lastModifiedBy: 'adesh'});
appointmentRouter.route('/')
.get(function (req, res, next) {
    	// console.log(JSON.stringify(bills));
    console.log('procesing get');
    db.bills.findAll({
    	include: [{
    		model:db.patientDetails,
    		where:{
    			centreId:req.params.centreId
    		}
    	}]
    }).then(function(bills){
    	console.log(JSON.stringify(bills));
	    res.json(bills);
    });
})

.post(function (req, res, next) {
	console.log('processing post : '+ req.body);
	// res.json(req.body);
    db.bills.build(req.body).save().then(function(result){
    	res.json(result);
    });	
    // res.end('appointmentRouter working');
})
.delete(function(req,res,next){
    
});

appointmentRouter.route('/:id')
.get(function(req,res,next){
    console.log('procesing get');
    db.bills.find({
    	where:{
    		transactionId: parseInt(req.params.id,10)
    	},
    	include:[{
    		model:db.patientDetails,
    		where:{
    			centreId:req.params.centreId
    		}
    	}]
    }).then(function(bill){
        console.log(JSON.stringify(bill));
        res.json(bill);
    });
})
.delete(function(req,res,next){

})
.put(function(req,res,next){
	console.log(req.body);
	db.bills.update(
	req.body, {where:{transactionId:parseInt(req.params.id,10)}}
	)
	.then(function (result) { 
		console.log(JSON.stringify(result));
		res.end("successfully updated")
	}, function(rejectedPromiseError){

	});
})
;

module.exports = appointmentRouter;