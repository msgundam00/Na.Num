'use strict'

window.app.controller 'RegisterCtrl', ($scope, Baas) ->
	$scope.Baas = Baas

	$scope.register = (account) ->
		console.log 'Do Register'
		$scope.Baas.io.signup account.username, account.password, account.email, account.name, (err, res) ->
			if err
				alert 'WrongInfo'
