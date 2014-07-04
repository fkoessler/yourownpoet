// app.js
// create our angular app and inject ngAnimate and ui-router 
// =============================================================================
angular.module('questionnaireApp', ['ngAnimate', 'ui.router', 'ui.bootstrap'])

// configuring our routes 
// =============================================================================
//.config(function($stateProvider, $urlRouterProvider) {
.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
  $stateProvider
  
    // route to show our basic form (/questionnaire)
    .state('questionnaire', {
      url: '/questionnaire',
      templateUrl: 'questionnaire/questionnaire.html',
      controller: 'questionnaireCtrl'
    })
    
    // nested states 
    // each of these sections will have their own view
    // url will be nested (/questionnaire/receiver_name)
    .state('questionnaire.receiver_name', {
      url: '/receiver_name',
      templateUrl: 'questionnaire/receiver_name.html'
    })
    
    // url will be /questionnaire/location
    .state('questionnaire.location', {
      url: '/location',
      templateUrl: 'questionnaire/location.html'
    })
    
    // url will be /questionnaire/relationship
    .state('questionnaire.relationship', {
      url: '/relationship',
      templateUrl: 'questionnaire/relationship.html'
    })

    // url will be /questionnaire/trait
    .state('questionnaire.trait', {
      url: '/trait',
      templateUrl: 'questionnaire/trait.html'
    })

    // url will be /questionnaire/message
    .state('questionnaire.message', {
      url: '/message',
      templateUrl: 'questionnaire/message.html'
    });
    
  // catch all route
  // send users to the form page 
  $urlRouterProvider.otherwise('/questionnaire/receiver_name');


}])

// our controller for the form
// =============================================================================
//.controller('questionnaireCtrl', function($scope) {
.controller('questionnaireCtrl', ['$scope', function($scope) {
  // we will store all of our form data in this object
  $scope.formData = {};
  
  // function to process the form
  $scope.processForm = function() {
    alert('awesome!');
  };

}]);


function RelationshipsTypeaheadCtrl($scope, $http, limitToFilter) {
  $scope.relationships = function(relationshipName) {
    return $http.get("/api/questionnaire/relationship?search="+relationshipName).then(function(response){
      return limitToFilter(response.data, 15);
    });
  };
}
RelationshipsTypeaheadCtrl.$inject = ['$scope', '$http', 'limitToFilter'];

function TraitsTypeaheadCtrl($scope, $http, limitToFilter) {
  $scope.traits = function(traitName) {
    return $http.get("/api/questionnaire/trait?search="+traitName).then(function(response){
      return limitToFilter(response.data, 15);
    });
  };
}
TraitsTypeaheadCtrl.$inject = ['$scope', '$http', 'limitToFilter'];

function MessagesTypeaheadCtrl($scope, $http, limitToFilter) {
  $scope.messages = function(messageName) {
    return $http.get("/api/questionnaire/message?search="+messageName).then(function(response){
      return limitToFilter(response.data, 15);
    });
  };
}
MessagesTypeaheadCtrl.$inject = ['$scope', '$http', 'limitToFilter'];