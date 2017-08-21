(function() {
 'use strict';
	angular.module('app').service('dataService', function($http) {
	 var base_uri = 'https://demo2697834.mockable.io/movies';
/*		this.isLoggedIn = function (callback) {
					$http.get(base_uri + '/isLoggedIn')
					.then(callback);
		};
		this.getTicket = function (id,callback) {
					$http.get(base_uri + '/getTicket/'+id)
					.then(callback);
		};*/
		this.getAllMovies = function (callback) {
					$http.get(base_uri)
					.then(callback);
		};

	});

})();









