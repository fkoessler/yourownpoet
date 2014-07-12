// create our angular app and inject ngAnimate and ui-router 
// =============================================================================
angular.module('questionnaireApp', ['ngAnimate', 'ui.router', 'ui.bootstrap'])

// configuring our routes 
// =============================================================================
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
    })

    .state('poem', {
      url: '/poem',
      templateUrl: 'questionnaire/poem.html',
      controller: 'questionnaireCtrl'
    });
    
  // catch all route
  // send users to the receiver_name page
  $urlRouterProvider.otherwise('/questionnaire/receiver_name');


}])

// our controller for the form
// =============================================================================
.controller('questionnaireCtrl', ['$scope', '$http', '$state', function($scope, $http, $state) {
  // we will store all of our form data in this object
  $scope.formData = {};
  // submit button disabled by default
  $scope.isDisabled = true;
  // enable submit button if all formData fields are set
  $scope.$watchCollection('formData', function() {
    if ($scope.formData.receiver_name && $scope.formData.location && $scope.formData.relationship && $scope.formData.trait && $scope.formData.message) {
      $scope.isDisabled = false;
    } else {
      $scope.isDisabled = true;
    }
  });
  
  // function to submit the form
  $scope.processForm = function() {

    // wrap formData in questionnaire element (matches backend)
    postParams = 
    {"questionnaire": 
      {
       "receiver_name": $scope.formData.receiver_name,
       "location": $scope.formData.location,
       "relationship": $scope.formData.relationship,
       "trait_category": $scope.formData.trait,
       "message_category": $scope.formData.message
      }
    } 
     // send post request
    $http({
      method  : 'POST',
      url     : 'api/questionnaire/save_form',
      data    : $.param(postParams),  // pass in data as strings
      headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
    })
    .success(function(data) {
        console.log(data);
        $scope.errorReceiverName = "";
        $scope.errorLocation = "";
        $scope.errorRelationship = "";
        $scope.errorTrait = "";
        $scope.errorMessage = "";

        if (!data.success) {
          // if not successful, bind errors to error variables
          if (data.errors.receiver_name) {
            $scope.errorReceiverName = 'Receiver name ' + data.errors.receiver_name;
          }
          if (data.errors.location) {
            $scope.errorLocation = 'Location ' + data.errors.location;
          }
          if (data.errors.relationship) {
            $scope.errorRelationship = 'Relationship ' + data.errors.relationship;
          }
          if (data.errors.trait_category) {
            $scope.errorTrait = 'Trait ' + data.errors.trait_category;
          }
          if (data.errors.message_category) {
            $scope.errorMessage = 'Message ' + data.errors.message_category;
          }
        } else {
          // if successful, bind success message to message
          //$scope.message = data.success_message;
          $state.go('poem');
        }
    });
  }

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