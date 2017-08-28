(function() {
	'use strict';
	angular.module('app')
		.controller('dashboardCtrl', function($scope, dataService, $window) {
			/*Main function*/
			$scope.init = function() {
				/*Variable declaration / initialization section*/
				$scope.currentMovie = undefined;
				$scope.listElement = undefined;
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
								var movie;
								var element;
								if (e.keyCode == '37') {
									// left arrow   
									element = $($scope.listElement).prev('li');
									if (element.length > 0) {
										movie = JSON.parse($(element).attr('ng-value'));
										$scope.setCurrentMovie(movie, element);
									}
								} else if (e.keyCode == '39') {
									// right arrow	
									element = $($scope.listElement).next('li');
									if (element.length > 0) {
										movie = JSON.parse($(element).attr('ng-value'));
										$scope.setCurrentMovie(movie, element);
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
					});
					$(".openNav").click(function() {
						$scope.openNav();
					});
				});
				/*End of function initialization section*/
			};
			/*function definition section*/
			/*Check if user is logged in and asign its data to the controller's scope*/
			$scope.isLoggedIn = function() {
				dataService.isLoggedIn(function(response) {
					if (response.data.id) {
						$scope.user = response.data;
						$scope.getAllMovies();
					} else {
						window.location = "/";
					}
				});
			};
			/*Call the service to get the list of movies, then load the logs the user has*/
			$scope.getAllMovies = function() {
				dataService.getAllMovies(function(response) {
					$scope.movieList = response.data.entries;
					$scope.getAllLogs();
				});
			};
			/*function to load all the log the current user has*/
			$scope.getAllLogs = function() {
				dataService.getAllLogs(function(response) {
					/*if the current log list has no elements, then load all the data*/
					if ($scope.logList.length == 0) {
						$scope.logList = response.data;
					} /*if the loglist has elements, only push on top of the list the new element*/
					else {
						$scope.logList.unshift(response.data[0]);
					}
				});
			};
			/* function to set a new log*/
			$scope.newLog = function(movie) {
				var obj = {
					user_id: $scope.user.id,
					movie_id: movie.id,
					movie_name: movie.title
				};
				dataService.newLog(obj, function(response) {
					/**/
					$scope.getAllLogs();
				});
			};
			/*function to set the movie as the current movie it needs a movie element from the movie list,
			 and an li element from the DOM */
			$scope.setCurrentMovie = function(movie, listElement) {
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
							$scope.newLog(movie);
							try {
								$scope.swap($scope.currentMovie.contents[0].url);
							} catch (e) {
							}
						}
					} else {
						$scope.$apply(function() {
							$scope.currentMovie = movie;
							console.log($scope.currentMovie);
						});
						$scope.listElement = $(listElement)[0];
						$scope.newLog(movie);
						try {
							/*when click on the movie, load its content to the video tag, at the bottom*/
							$scope.swap($scope.currentMovie.contents[0].url);
						} catch (e) {
						}
					}
				}, 200);
			};
			/*when click on an element of the recent's list, it will trigger the click event on the image
			with its corresponding movie_id*/
			$scope.selectFromRecent = function(movie_id) {
				$("img[name='" + movie_id + "']").trigger('click');
			};
			/*load video to the bottom html5 video tag*/
			$scope.swap = function(newUrl) {
				var video = document.getElementsByTagName('video')[0];
				video.src = newUrl;
				try {
					video.load();
					/*handle that when the video ends, exit fullscreen*/
					$(video).on('ended', function() {
						this.webkitExitFullscreen();
					});
				} catch (er) {
				}
			};
			/*open sidebar*/
			$scope.openNav = function() {
				if (document.getElementById("mySidenav").clientWidth == 0) {
					document.getElementById("mySidenav").style.width = "250px";
					document.getElementById("main").style.marginLeft = "250px";
				} else {
					$scope.closeNav();
				}
			};
			/*close sidebar*/
			$scope.closeNav = function() {
				document.getElementById("mySidenav").style.width = "0";
				document.getElementById("main").style.marginLeft = "0";
			};
			/*trigger fullscreen video size, and handle load and play*/
			$scope.fullscreen = function() {
				var video = document.getElementsByTagName('video')[0];
				video.webkitEnterFullscreen();
				video.load();
				video.play();
			};
			/*End of function definition section*/
			/*start the whole process*/
			$scope.init();
		});
})();