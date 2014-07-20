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