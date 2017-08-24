var app = angular.module("app", ['ngRoute']); 

// configure our routes
app.config(function($routeProvider) {
    $routeProvider
    // route for the home page
        .when('/', {
            templateUrl: 'templates/login.html',
            controller: 'loginCtrl'
          
        })
        .when('/login', {
            templateUrl: 'templates/login.html',
            controller: 'loginCtrl'
          
        })
        
        
        .when('/dashboard', {
            templateUrl: 'templates/dashboard.html',
            controller: 'catalogCtrl'
        

        });

       
});
