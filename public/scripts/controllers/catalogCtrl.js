(function() {
  'use strict';
  angular.module('app')

.controller('catalogCtrl',function($scope,dataService,$location,$window){
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

	$scope.currentMovie;

	$scope.movieList = [];

	$scope.getAllMovies = function(){


		dataService.getAllMovies(function(response){	
			
		 	// if(response.data.id){
		 	// 	if(window.location !="/#!/dashboard")
		 	// 		window.location = "/#!/dashboard";
		 	// 	$scope.user = response.data;
		 	// }
		 	console.log(response.data.entries);
		 	$scope.movieList =response.data.entries;
		 });
	}

	$scope.getAllMovies();

	$scope.setCurrentMovie= function(movie){
		$scope.currentMovie = movie;
		console.log(movie.contents[0].url);
		swap(movie.contents[0].url)
	}

	function swap(newUrl) {
		var video = document.getElementsByTagName('video')[0];
		video.src = newUrl;
		video.load();
		video.play();
	}
});

})();