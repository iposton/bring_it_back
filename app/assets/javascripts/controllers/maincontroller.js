// Controller before a person is logged in

(function(){

	angular
		.module('app')
		.controller('MainController', MainController);

	// MainController.$inject = ['CommentsFactory', 'PostsFactory', 'ipCookie'];

	// function MainController(CommentsFactory, PostsFactory, ipCookie){

	// 	var self = this;

	// 	self.id = ipCookie('id');		
								
	// 	//Create PostFactory as an object						
	// 	self.Post = new PostsFactory();
	// 	self.id = ipCookie('id');

	// }

})();