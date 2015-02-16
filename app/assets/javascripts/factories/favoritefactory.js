(function(){

    angular
        .module('app')
        .factory('FavoritesFactory', FavoritesFactory);

    FavoritesFactory.$inject = ['Resources', '$http'];

    function FavoritesFactory(Resources, $http){

        var Favorites = function(){
            var self = this;

            // Use ngResource for Favorites
            var FavoriteResource = new Resources('favorites');

            // Get all Favorites
            self.favorites = FavoriteResource.query();

            // Create a favorite object
            self.favorite = new FavoriteResource();

            self.create = function(favorite){

                FavoriteResource.save(favorite, function(data, headers, status){    
                    // take favorite from array                             
                    self.favorites.unshift(data);                           
                    // Clear the modal form
                    //movie.link = '';
                    favorite.title = '';        
                    // Close the modal
                    $('#favorite-link').modal('toggle');
                }).$promise.catch(function(response) {
                    //this will be fired upon error
                    if(response.status !== 201){
                        self.favoriteError = true;
                    }
                });
            };


            // Delete a favorite
            self.destroy = function(favorite, index){

                var favoriteObj = {id: favorite};
                FavoriteResource.delete(favoriteObj);

                self.favorites.splice(index, 1);

            };      
        };

        return Favorites;

    }

})();