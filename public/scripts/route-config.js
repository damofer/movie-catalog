
(function() {
  'use strict';

  
  angular
    .module('app')
    .config(config);

  function config($routeProvider) {
    $routeProvider
       .when('/', {
        controller: 'mainCtrl',
        controllerAs: 'vm',
        templateUrl: 'templates/login.html'
      })
      .when('/login', {
        controller: 'mainCtrl',
        controllerAs: 'vm',
        templateUrl: 'templates/login.html'
      })
      .when('/signup', {
        controller: 'mainCtrl',
        controllerAs: 'vm',
        templateUrl: 'templates/signup.html'
      })
      .when('/ticket/:id', {
        controller: 'ticketCtrl',
        controllerAs: 'vm',
        templateUrl: 'templates/ticket.html',
        data: 'edit'
      })
      .when('/create', {
        controller: 'ticketCreationCtrl',
        controllerAs: 'vm',
        templateUrl: 'templates/ticket_creation.html',
        data: 'edit'
      })
      .when('/dashboard', {
        controller: 'dashboardCtrl',
        controllerAs: 'vm',
        templateUrl: 'templates/dashboard.html',
        data: 'add'
      })
      .otherwise({
        redirectTo: '/'
      });
  }
})();
