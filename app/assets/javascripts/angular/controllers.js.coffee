
verseApp = angular.module("verseApp", [])

verseApp.controller 'VerseCtrl', ($scope) ->
  $scope.verses = [
    {
      line_one: "A beautiful verse I stand"
    }
    {
      line_one: "Paris is beautiful I reckon"
    }
    {
      line_one: "Dans le port d'Amsterdam ya des marins qui boivent"
    }
  ]