// Controller before a person is logged in


	angular
		.module('app')
		.controller('MainController', MainController);

	MainController.$inject = ['MoviesFactory', 'ipCookie'];

	function MainController(MoviesFactory, ipCookie){

		var self = this;

		self.id = ipCookie('id');		
								
		// Create MovieFactory as an object						
		 self.Movie = new MoviesFactory();
		 self.id = ipCookie('id');

	}

