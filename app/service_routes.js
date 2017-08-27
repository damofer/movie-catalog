var dbconfig = require('../config/database.js');
var request = require('ajax-request');
module.exports = function(app,connection) {



	app.get('/getAllLogs',function(req,resp){
		// about mysql
		// can filter with req.user.ROL if needed 
		connection.getConnection(function(error,tempCont){
			if(!!error){
				tempCont.release();
				console.log('Error');

			}else{
				var id =req.user.ID;
				console.log('Connected!');
				
					var q ="SELECT l.ID, l.USER_ID, SUBSTR(l.TIMESTAMP,1,10) AS DATE, u.USERNAME, u.EMAIL \
					 FROM "+dbconfig.logs_table+" AS l \
					 INNER JOIN "+dbconfig.users_table+" AS u ON l.USER_ID = u.ID\
					 ";
					

			}
				


				tempCont.query(q,
				function(error,rows,fields){
					tempCont.release();
					if(!!error){
						console.log("Error with the query getAllLogs",error);
					}else{
						resp.json(rows);
					}
				})
			});
		});


	app.get('/getAllMovies',function(req,resp){
		// about mysql
		
	
		 var base_uri = 'https://demo2697834.mockable.io/movies';
		 request(base_uri, function(err, res, body) {

		 	resp.json(JSON.parse(body));
		 });
		
	});



    
}



