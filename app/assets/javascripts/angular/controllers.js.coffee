
verseApp = angular.module("verseApp", ['ngResource'])

#verseApp.config ($httpProvider) ->
#  authToken = $("meta[name=\"csrf-token\"]").attr("content")
#  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

verseApp.controller 'VerseCtrl', ['$scope', 'Verse', ($scope, Verse) ->
  $scope.verses = Verse.query()

  $scope.create = ->
    Verse.save $scope.newVerse, ((resource) ->
      $scope.verses.push resource
      $scope.newVerse = {}
      return
    ), (response) ->
      console.log "Error" + response.status
      return
    return

  $scope.deleteItem = (item) ->
    index = $scope.verses.indexOf(item)
    $scope.verses.splice(index,1)
]

verseApp.factory 'Verse', ['$resource', ($resource ) ->
  return $resource('api/verses')
]