var app = angular.module("app", ['ngRoute']); 

// configure our routes
app.config(function($routeProvider) {
    $routeProvider
    // route for the home page
        .when('/', {
            templateUrl: 'templates/login.html',
            controller: 'loginCtrl'
          
        })
        
        .when('/dashboard', {
            templateUrl: 'templates/dashboard.html',
            controller: 'catalogCtrl'
        

        });
       /* .when('/admin/:id', {
        controller: 'adminDetailsCtrl',
        controllerAs: 'vm',
        templateUrl: 'templates/admin_registros-detalles.php'
        });*/
       
});
// create the controller and inject Angular's $scope
analytics.controller('mainController', function($scope) {
    // create a message to display in our view
    $scope.message = 'Everyone come and see how good I look!';
});
analytics.controller('aboutController', function($scope) {
    $scope.message = 'Look! I am an about page.';
});

analytics.filter('startFrom', function() {
    return function(input, start) {console.log(input);
        start = +start; //parse to int
        return input.slice(start);
    }
});