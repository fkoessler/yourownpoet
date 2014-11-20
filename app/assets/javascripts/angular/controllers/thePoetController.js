
// configuring our routes
// =============================================================================
angular.module('thePoetApp').config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {

  $stateProvider

    // route to show our basic form (/questionnaire)
    .state('questionnaire', {
      url: '/questionnaire',
      templateUrl: 'questionnaire/questionnaire.html',
    })

    // nested states
    // each of these sections will have their own view
    // url will be nested (/questionnaire/receiver_name)
    .state('questionnaire.receiver_name', {
      url: '/receiver_name',
      template: '<div class="col-md-3 text-left ng-scope"></div><div class="form-container col-md-6 text-center ng-scope"><div class="form-group"><label for="receiver_name">Receiver Name:</label><input name="receiver_name" ng-model="formData.receiver_name" receiver_name="receiver_name" required="" type="text" class="ng-pristine ng-invalid ng-invalid-required"></div><div class="form-group"><label for="receiver_sex">Receiver Sex:</label><input name="receiver_sex" ng-model="formData.receiver_sex" receiver_sex="receiver_sex" required="" type="radio" value="male" class="ng-pristine ng-invalid ng-invalid-required">Male<input name="receiver_sex" ng-model="formData.receiver_sex" receiver_sex="receiver_sex" required="" type="radio" value="female" class="ng-pristine ng-invalid ng-invalid-required">Female</div></div><div class="col-md-3 text-right ng-scope"><a class="btn btn-primary" ui-sref="questionnaire.location">Next Step</a></div>',
    })

    // url will be /questionnaire/location
    .state('questionnaire.location', {
      url: '/location',
      template: '<div class="col-md-3 text-left ng-scope"><a class="btn btn-primary" ui-sref="questionnaire.receiver_name">Previous Step</a></div><div class="form-container col-md-6 text-center ng-scope"><div class="form-group"><label for="location">Location:</label><input location="location" name="location" ng-model="formData.location" required="" type="text" class="ng-pristine ng-invalid ng-invalid-required"></div></div><div class="col-md-3 text-right ng-scope"><a class="btn btn-primary" ui-sref="questionnaire.relationship">Next Step</a></div>'
    })

    // url will be /questionnaire/relationship
    .state('questionnaire.relationship', {
      url: '/relationship',
      template: '<div class="col-md-3 text-left ng-scope"><a class="btn btn-primary" ui-sref="questionnaire.location">Previous Step</a></div><div class="form-container col-md-6 text-center ng-scope"><div class="form-group ng-scope" ng-controller="RelationshipsTypeaheadCtrl"><label for="relationship">Relationship:</label><input autocomplete="off" name="relationship" ng-model="formData.relationship" relationship="relationship" required="" type="text" typeahead-editable="false" typeahead="suggestion for suggestion in relationships($viewValue)" class="ng-pristine ng-invalid ng-invalid-required"><ul class="dropdown-menu ng-isolate-scope"><!-- ngRepeat: match in matches --></ul></div></div><div class="col-md-3 text-right ng-scope"><a class="btn btn-primary" ui-sref="questionnaire.trait">Next Step</a></div>'
    })

    // url will be /questionnaire/trait
    .state('questionnaire.trait', {
      url: '/trait',
      template: '<div class="col-md-3 text-left ng-scope"><a class="btn btn-primary" ui-sref="questionnaire.relationship">Previous Step</a></div><div class="form-container col-md-6 text-center ng-scope"><div class="form-group ng-scope" ng-controller="TraitsTypeaheadCtrl"><label for="trait">Trait:</label><input autocomplete="off" name="trait" ng-model="formData.trait" trait="trait" required="" type="text" typeahead-editable="false" typeahead="suggestion for suggestion in traits($viewValue)" class="ng-pristine ng-invalid ng-invalid-required"><ul class="dropdown-menu ng-isolate-scope"><!-- ngRepeat: match in matches --></ul></div></div><div class="col-md-3 text-right ng-scope"><a class="btn btn-primary" ui-sref="questionnaire.message">Next Step</a></div>'
    })

    // url will be /questionnaire/message
    .state('questionnaire.message', {
      url: '/message',
      template: '<div class="col-md-3 text-left ng-scope"><a class="btn btn-primary" ui-sref="questionnaire.trait">Previous Step</a></div><div class="form-container col-md-6 text-center ng-scope"><div class="form-group ng-scope" ng-controller="MessagesTypeaheadCtrl"><label for="message">Message:</label><input autocomplete="off" name="message" ng-model="formData.message" message="message" required="" type="text" typeahead-editable="false" typeahead="suggestion for suggestion in messages($viewValue)" class="ng-pristine ng-invalid ng-invalid-required"><ul class="dropdown-menu ng-isolate-scope"><!-- ngRepeat: match in matches --></ul></div></div>'
    })

    .state('poem', {
      url: '/poem',
      template: '<div class="poem"><p>{{ poem.title }}</p><p><div>{{ poem.intro_verse.line_one}}</div><div>{{ poem.intro_verse.line_two}}</div><div>{{ poem.intro_verse.line_three}}</div><div>{{ poem.intro_verse.line_four}}</div><div>{{ poem.intro_verse.line_five}}</div></p><p><div>{{ poem.trait_verse.line_one}}</div><div>{{ poem.trait_verse.line_two}}</div><div>{{ poem.trait_verse.line_three}}</div><div>{{ poem.trait_verse.line_four}}</div><div>{{ poem.trait_verse.line_five}}</div></p><p><div>{{ poem.message_verse.line_one}}</div><div>{{ poem.message_verse.line_two}}</div><div>{{ poem.message_verse.line_three}}</div><div>{{ poem.message_verse.line_four}}</div><div>{{ poem.message_verse.line_five}}</div></p><div class="text-center"><a class="btn btn-warning" ui-sref="questionnaire.receiver_name">Restart</a></div></div>'
    });

  // catch all route
  // send users to the receiver_name page
  $urlRouterProvider.otherwise('/questionnaire/receiver_name');


}])

// our controller for the form
// =============================================================================
angular.module('thePoetApp').controller('questionnaireCtrl', ['$scope', '$http', '$state', function($scope, $http, $state) {
  // we will store all of our form data in this object
  $scope.formData = {};
  // submit button disabled by default
  $scope.isDisabled = true;
  // enable submit button if all formData fields are set
  $scope.$watchCollection('formData', function() {
    if ($scope.formData.receiver_name && $scope.formData.receiver_sex && $scope.formData.location && $scope.formData.relationship && $scope.formData.trait && $scope.formData.message) {
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
       "receiver_sex": $scope.formData.receiver_sex,
       "location": $scope.formData.location,
       "relationship": $scope.formData.relationship,
       "trait_category": $scope.formData.trait,
       "message_category": $scope.formData.message
      }
    }
     // send post request
    $http({
      method  : 'POST',
      url     : 'api/questionnaire/poem',
      data    : $.param(postParams),  // pass in data as strings
      headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
    })
    .success(function(data) {
        $scope.errorText = "";
        $scope.errorReceiverName = "";
        $scope.errorReceiverSex = "";
        $scope.errorLocation = "";
        $scope.errorRelationship = "";
        $scope.errorTrait = "";
        $scope.errorMessage = "";

        if (!data.success) {
          // if not successful, bind errors to error variables
          if (data.errors.error_text) {
            $scope.errorText = data.errors.error_text;
          }
          if (data.errors.receiver_name) {
            $scope.errorReceiverName = 'Receiver name ' + data.errors.receiver_name;
          }
          if (data.errors.receiver_sex) {
            $scope.errorReceiverSex = 'Receiver sex ' + data.errors.receiver_sex;
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
          $scope.poem = data.poem;
          $scope.formData = {};
          $state.go('poem');
        }
    });
  }
}]);
