(function() {
  'use strict';
  angular.module('app')

.controller('loginCtrl',function($scope,dataService,$location,$window){
$scope.loggedIn = false;

	$scope.loginValidation = function(args =''){
		 dataService.loginValidation(args,function(response){
			if(response == true){
			$scope.$apply(function () {
          	 $scope.loggedIn = true;
        	});
				
				setTimeout(function() {
					window.location.href = '#!/dashboard';
				}, 200);
				
			
			}else{
				
			}
		})
	}
	$scope.logout = function(){
		
          	 $scope.loggedIn = false;
        
		window.location.href = '#!/';
	}

	$(document).ready(function(){

		$('#login_form').on('submit',function(evt){
			evt.preventDefault();
			
			var args = $(this).serialize();
			$scope.loginValidation(args)
				
			


		});
	});

	$scope.loginValidation();
});

})();