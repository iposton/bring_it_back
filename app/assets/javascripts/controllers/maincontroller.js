// Controller before a person is logged in

(function(){

	angular
		.module('app')
		.controller('MainController', MainController);

	MainController.$inject = ['MoviesFactory', 'FavoritesFactory', 'ipCookie'];

	function MainController(MoviesFactory, FavoritesFactory, ipCookie){

		var self = this;

		self.id = ipCookie('id');		
								
		// Create PostFactory as an object						
		 self.Movie = new MoviesFactory();
		 self.id = ipCookie('id');

	}

})();