app = angular.module("app.directives", [])
app = angular.module("app", ["app.directives"])
app.controller "KitaController", ($scope) ->
  $scope.greeting = ->
    "Hello Kita-Team - this text was provided by an angular method $scope.greeting()"
    

