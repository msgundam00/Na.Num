'use strict'

window.app = angular.module('naNumWebApp', [
  'ngRoute'
])

window.app.factory 'Baas', () ->
	io: new Baas.IO
		orgName: 'a1abb9d0-4831-11e3-ba18-06530c0000b4'
		appName: 'd90234c1-493d-11e3-a417-06f4fe0000b5'


window.app.config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/login',
        templateUrl: 'views/login.html'
        controller: 'LoginCtrl'
      .when '/register',
        templateUrl: 'views/register.html'
        controller: 'RegisterCtrl'
      .otherwise
        redirectTo: '/'
