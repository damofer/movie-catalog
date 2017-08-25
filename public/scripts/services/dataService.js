(function() {
 'use strict';
	angular.module('app').service('dataService', function($http) {
	 var base_uri = 'https://demo2697834.mockable.io/movies';

		this.loginValidation = function (args,callback) {
					$.ajax
					  ({
					    type: "POST",
					    url: "includes/loginValidation.php",
					    dataType: 'json',					    
					    data: args
					    
					}).done(callback);

		};
	
		this.getAllMovies = function (callback) {
					$http.get(base_uri)
					.then(callback);
		};

	});

})();









