(function(){

    angular
        .module('app')
        .factory('MoviesFactory', MoviesFactory);

    MoviesFactory.$inject = ['Resources', '$http'];

    function MoviesFactory(Resources, $http){

        var Movies = function(){
            var self = this;

            // Use ngResource for Movies
            var MovieResource = new Resources('movies');

            // Get all Movies
            self.movies = MovieResource.query();

            // Create a movie object
            self.movie = new MovieResource();

            self.create = function(movie){

                MovieResource.save(movie, function(data, headers, status){    
                    // take movie from array                             
                    self.movies.unshift(data);                           
                    // Clear the modal form
                    movie.link = '';
                    movie.title = '';
                    movie.release_date = '';
                    movie.actor1 = '';
                    movie.actor2 = ''; 
                    movie.actor3 = '';  
                    movie.description = '';
                    movie.reminders = '';         
                    // Close the modal
                    //$('#movie-link').modal('toggle');
                }).$promise.catch(function(response) {
                    //this will be fired upon error
                    if(response.status !== 201){
                        self.movieError = true;
                    }
                });
            };


            // Delete a movie
            self.destroy = function(movie, index){

                var movieObj = {id: movie};
                MovieResource.delete(movieObj);

                self.movies.splice(index, 1);

            };      
        };

        return Movies;

    }

})();