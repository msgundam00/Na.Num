'use strict'

window.app.controller 'LoginCtrl', ($scope, Baas) ->
	$scope.Baas = Baas
	$scope.login = (account) ->
		console.log 'Do Login'
		$scope.Baas.io.login account.username, account.password
