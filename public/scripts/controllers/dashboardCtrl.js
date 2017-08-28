(function() {
	'use strict';
	angular.module('app')

		.controller('dashboardCtrl', function($scope, dataService, $window) {


			$scope.init = function() {
				/*Variable declaration / initialization section*/
				$scope.currentMovie;
				$scope.listElement;
				$scope.movieList = [];
				$scope.logList = [];
				$scope.user = undefined;
				/*End of Variable declaration / initialization section*/


				/*function initialization section*/

				
				$scope.isLoggedIn();

				// start when document is ready;
				angular.element(document).ready(function() {

					$(document).unbind()
						.keydown(function(e) {
							var key = e.which;
						
							if (key == 35 || key == 36 || key == 37 || key == 39) {

								e.preventDefault();
								return false;
							}
							return true;
						})
						.keyup(function(e) {
							e = e || window.event;
							if ([32, 37, 38, 39, 40].indexOf(e.keyCode) > -1) {
								e.preventDefault();
							}

							if ($scope.currentMovie == undefined) {
								$scope.listElement = $('.catalog__list__item')[0];
								
								$scope.setCurrentMovie($scope.movieList[0], $scope.listElement);
							} else {



								if (e.keyCode == '37') {

									// left arrow   
									var element = $($scope.listElement).prev('li');
									if (element.length > 0) {
										var movie = JSON.parse($(element).attr('ng-value'));


										$scope.setCurrentMovie(movie, element)
									}
								} else if (e.keyCode == '39') {
									// right arrow	
									var element = $($scope.listElement).next('li');

									if (element.length > 0) {
										var movie = JSON.parse($(element).attr('ng-value'));


										$scope.setCurrentMovie(movie, element)
									}
								}
							}


						})
						.on('click', 'img', function(e) {

							
							if ($(e.target.parentNode).attr('class') === $('.catalog__list__item').attr('class')) {
								var listItem = e.target.parentNode;
								var movie = JSON.parse($(e.target.parentNode).attr('ng-value'));
								$scope.setCurrentMovie(movie, listItem);

							}


						});

					$(".closebtn").click(function() {
						$scope.closeNav();
					})
					$(".openNav").click(function() {
						$scope.openNav();
					})

				});



				/*End of function initialization section*/
			}
			$scope.isLoggedIn = function() {
				dataService.isLoggedIn(function(response) {

					if (response.data.id) {

						$scope.user = response.data;
					
						$scope.getAllMovies();
					} else {
						window.location = "/";
					}
				});
			}

			/*function definition section*/
			$scope.getAllMovies = function() {


				dataService.getAllMovies(function(response) {

					
					$scope.movieList = response.data.entries;
					$scope.getAllLogs();


				});
			}

			$scope.getAllLogs = function() {


				dataService.getAllLogs(function(response) {

					
					if($scope.logList.length== 0){
					$scope.logList = response.data;
				}else{
					$scope.logList.unshift(response.data[0]);
				}
					
				


				});
			}
			$scope.newLog = function(movie) {

				var obj = {
					user_id: $scope.user.id,
					movie_id: movie.id,
					movie_name: movie.title
				};
				
				dataService.newLog(obj,function(response){
				
		    		$scope.getAllLogs()
				
				
				});
			}


			$scope.setCurrentMovie = (movie, listElement) => {

				$('.catalog__list__item').css({
					"transform": "scale(1)"
				});
				$(listElement).css({
					"transform": "scale(1.1)"
				});



				setTimeout(function() {
					if ($scope.currentMovie != undefined) {

						if (movie.id != $scope.currentMovie.id) {
						
							$scope.$apply(function() {
								$scope.currentMovie = movie;
							});
							$scope.currentMovie = movie;
							$scope.listElement = $(listElement)[0];


							// set the scroll of the list element in order to center the selected movie.
							$($scope.listElement.parentNode).animate({
								scrollLeft: $scope.listElement.offsetLeft - ($scope.listElement.parentNode.clientWidth - $scope.listElement.clientWidth * 1.1) / 2
							}, 500);


							$scope.newLog(movie)

							try {
								$scope.swap($scope.currentMovie.contents[0].url);


							} catch (e) {
								
							}
						}

					} else {

						$scope.$apply(function() {
							$scope.currentMovie = movie;
						});
						$scope.listElement = $(listElement)[0];
						$scope.newLog(movie);
						try {
							$scope.swap($scope.currentMovie.contents[0].url);
						} catch (e) {
						
						}
					}
				}, 200);
			}

			$scope.selectFromRecent= function(movie_id){
				$("img[name='"+movie_id+"']").trigger('click');
			}

			$scope.swap = function(newUrl) {

				var video = document.getElementsByTagName('video')[0];
				video.src = newUrl;
				try {
					video.load();
					$(video).on('ended',function(){this.webkitExitFullscreen()});

				} catch (er) {

				}
			}

			$scope.openNav = function() {
				if (document.getElementById("mySidenav").clientWidth == 0) {
					document.getElementById("mySidenav").style.width = "250px";
					document.getElementById("main").style.marginLeft = "250px";
				} else {
					$scope.closeNav();
				}
			}

			$scope.closeNav = function() {
				document.getElementById("mySidenav").style.width = "0";
				document.getElementById("main").style.marginLeft = "0";
			}

			$scope.fullscreen=function(){
				var video = document.getElementsByTagName('video')[0]
				video.webkitEnterFullscreen()
				video.load();
				video.play();
			
			}
			/*End of function definition section*/




			$scope.init();

		});

})();