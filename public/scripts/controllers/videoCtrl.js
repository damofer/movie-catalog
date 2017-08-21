(function() {
  'use strict';
  angular.module('app')

.controller('videoCtrl',function($scope,dataService,$location,$window){
	/*$scope.user =undefined;
	$scope.isLoggedIn = function(){


		dataService.isLoggedIn(function(response){	
			
		 	if(response.data.id){
		 		if(window.location !="/#!/dashboard")
		 			window.location = "/#!/dashboard";
		 		$scope.user = response.data;
		 	}

		 });
	}
	$scope.isLoggedIn();*/

	$scope.movieList = [];

	$scope.getAllMovies = function(){


		dataService.getAllMovies(function(response){	
			
		 	// if(response.data.id){
		 	// 	if(window.location !="/#!/dashboard")
		 	// 		window.location = "/#!/dashboard";
		 	// 	$scope.user = response.data;
		 	// }
		 	console.log(response);

		 });
	}

	$scope.getAllMovies();
});

})();