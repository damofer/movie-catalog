(function() {
  'use strict';
  angular.module('app')

.controller('catalogCtrl',function($scope,dataService,$window){


$scope.init = function(){
	/*Variable declaration / initialization section*/
	$scope.currentMovie ;
	$scope.listElement; 
	$scope.movieList = [];

	/*End of Variable declaration / initialization section*/


	/*function initialization section*/


 $scope.getAllMovies();

 // start when document is ready;
 angular.element(document).ready(function () {
 	
 	window.addEventListener("keydown",function(e){
	 	e = e || window.event;
	 	if([32, 37, 38, 39, 40].indexOf(e.keyCode) > -1) {
        e.preventDefault();
   		 }

   		if($scope.currentMovie == undefined){
   			$scope.listElement =$('.catalog__list__item')[0];
			console.log($scope.listElement);
			$scope.setCurrentMovie($scope.movieList[0],$scope.listElement);
   		}else{
	 	
	 	
		  	  
		  	    if (e.keyCode == '37') {
		  	   		
			       // left arrow   
			       var element = $($scope.listElement).prev();
			        if(element.length>0 ){	
		  	   	    var movie = JSON.parse($(element).attr('ng-value'));	

		  	   		// console.log(element,movie)			      	
			       	$scope.setCurrentMovie(movie,element)
			       }
			    }
			    else if (e.keyCode == '39') {			    	
			       // right arrow	
			        var element = $($scope.listElement).next();
			        if(element.length>0 ){	
		  	   		var movie = JSON.parse($(element).attr('ng-value'));

		  	   		// console.log(element,movie)			      	
			       	$scope.setCurrentMovie(movie,element)
			        }
			    }
			}
	});

 	window.addEventListener("click",function(e){
 		if( $(e.target.parentNode).attr('class') === $('.catalog__list__item').attr('class') ){
 			var listItem = e.target.parentNode;	
 			var movie = JSON.parse($(e.target.parentNode).attr('ng-value'));
 			$scope.setCurrentMovie(movie,listItem);
 		}
 		
 	})
	

 });
	
	

/*End of function initialization section*/
}

	/*function definition section*/
	$scope.getAllMovies = function(){


		dataService.getAllMovies(function(response){	
			
		  	// console.log(response.data.entries);
		 	$scope.movieList =response.data.entries;
		 	
		 	
		 });
	}

	

	$scope.setCurrentMovie= (movie,listElement )=>{
		
		$('.catalog__list__item').css({"transform":"scale(1)"});
		$(listElement).css({"transform":"scale(1.1)"});
		
		if($scope.currentMovie != undefined){

		  if(movie.title != $scope.currentMovie.title){
		  	// console.log(movie.title , $scope.currentMovie.title)
		  	$scope.$apply(function () {
            $scope.currentMovie = movie;	
        	});
           $scope.currentMovie = movie;		
		   $scope.listElement = $(listElement)[0]; 

		    if ( $scope.listElement.offsetLeft >    ($scope.listElement.parentNode.clientWidth-$scope.listElement.clientWidth )/2) { //case when the item offset + its width  exceeds the screen width 
		         $( $scope.listElement.parentNode).animate( { scrollLeft: $scope.listElement.offsetLeft - ($scope.listElement.parentNode.clientWidth-$scope.listElement.clientWidth*1.1)/2},500);
		       
		         console.log("element offset = "+$scope.listElement.offsetLeft, "element width =" +$scope.listElement.clientWidth, "windows width ="+ $scope.listElement.parentNode.clientWidth)
		        $scope.listElement.parentNode.scrollLeft =  $scope.listElement.offsetLeft - $scope.listElement.clientWidth ;
		       } else {
		         $scope.listElement.parentNode.scrollLeft = 0;
		       }

			try{
				$scope.swap($scope.currentMovie.contents[0].url);
			}
			catch(e){
				console.log(e.text)
			}
		 }

		}else{
			
			$scope.$apply(function () {
            $scope.currentMovie = movie;	
        	});	
		     $scope.listElement = $(listElement)[0];
		     try{
			$scope.swap($scope.currentMovie.contents[0].url);
			}
			catch(e){
				console.log(e.text)
			}
		}
	}


	
	$scope.swap = function(newUrl) {
		var video = document.getElementsByTagName('video')[0];
		video.src = newUrl;
		video.load();
		video.play();
	}

/*End of function definition section*/







$scope.init();

});

})();