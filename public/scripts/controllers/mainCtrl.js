(function() {
  'use strict';
  angular.module('app')

// this controller will handle the auth
.controller('mainCtrl',function($scope,dataService,$location,$window){
	$scope.user =undefined;


	$scope.isLoggedIn = function(){


		dataService.isLoggedIn(function(response){	
		/*if the user is already logged in, redirect to the dashboard and asign its data to the $scope*/	
		 	if(response.data.id){
		 		if(window.location !="/#!/dashboard")
		 			window.location = "/#!/dashboard";
		 		$scope.user = response.data;
		 	}

		 });
	}
	$scope.isLoggedIn();
});

})();