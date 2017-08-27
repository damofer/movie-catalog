(function() {
  'use strict';
    angular
    .module('app')
  .service('dataService', function($http) {
  	  var base_uri = 'http://localhost:3000';
      this.isLoggedIn = function (callback) {
         $http.get(base_uri + '/isLoggedIn')
         .then(callback);
      };
      this.getTicket = function (id,callback) {
         $http.get(base_uri + '/getTicket/'+id)
         .then(callback);
      };
   
      this.getAllMovies = function (callback) {
         $http.get(base_uri + '/getAllMovies')
         .then(callback);
      };

    
  });

})();










