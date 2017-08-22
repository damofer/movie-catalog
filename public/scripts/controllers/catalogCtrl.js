(function() {
  'use strict';
  angular.module('app')

.controller('catalogCtrl',function($scope,dataService,$window){

 
 




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
	$scope.listElement = $(".catalog__list__item")[0];
	$scope.movieList = [];

	$scope.getAllMovies = function(){


		dataService.getAllMovies(function(response){	
			
		  	console.log(response.data.entries);
		 	$scope.movieList =response.data.entries;
		 	$scope.setCurrentMovie($scope.movieList[0]);
		 });
	}

	$scope.getAllMovies();

	$scope.setCurrentMovie= (movie,listElement = document.querySelector(".catalog__list__item"))=>{
		
		$(listElement).css({"transform":"scale(1.1)"});
		console.log("the winner is ",$(listElement));
		if(movie != $scope.currentMovie){

		
		$scope.currentMovie = movie;
		$scope.listElement = $(listElement);
		console.log($scope.currentMovie);
		swap(movie.contents[0].url)


		}
	}


	 $( document ).keyup(function(e){
	 	var i = $scope.movieList.indexOf($scope.currentMovie);
	 	console.log(i);
		  	  e = e || window.event;
		  	    if (e.keyCode == '37') {
			       // left arrow
			       console.log("izquierda");
			       if(i>0){
			       	console.log($($scope.listElement).prev());
			       	$($scope.listElement).css({"transform":"scale(1)"});
			       	$scope.setCurrentMovie($scope.movieList[i-1],$($scope.listElement).prev())
			       }
			    }
			    else if (e.keyCode == '39') {
			       // right arrow
			         console.log("derecha");
			       if(i< $scope.movieList.length -1){
			       	console.log($($scope.listElement).next());
			       		$($scope.listElement).css({"display":"scale(1)"});
			       	$scope.setCurrentMovie($scope.movieList[i+1],$($scope.listElement).next())
			       }
			    }
		  });
	function swap(newUrl) {
		var video = document.getElementsByTagName('video')[0];
		video.src = newUrl;
		video.load();
		video.play();
	}
});

})();