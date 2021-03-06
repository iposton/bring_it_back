angular.module('app').config(config).run(run);

		function config($routeProvider){

			//define the routes 
			$routeProvider

			.when('/', {

				title: 'BiB:: Movie Reminder',
				templateUrl: 'index.html',
				controller: 'MainController',
				controllerAs: 'main'

			})
				.when('/edit/:id', {

				title: 'Edit user',
				templateUrl: 'edit.html',
				controller: 'MainController',
				controllerAs: 'main'

			})

			.when('/movies', {

				title: "Movies",
				templateUrl: 'movies.html',
				controller: 'MainController',
				controllerAs: 'main'

			})
				.when('/user-profile', {

				title: 'User Profile',
				templateUrl: 'users_show.html',
				controller: 'MainController',
				controllerAs: 'main'

			})
				.otherwise({

				redirectTo: '/'
			});


		}
		function run($location, $rootScope){


			var changeRoute = function(event, current){
				return $rootScope.title = current.$$route.title;
			};

			$rootScope.$on('$routeChangeSuccess', changeRoute);
		}


